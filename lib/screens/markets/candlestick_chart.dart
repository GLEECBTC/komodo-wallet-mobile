import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart' hide TextStyle;
import 'package:intl/intl.dart';
import '../../model/cex_provider.dart';
import '../../utils/utils.dart';

class CandleChart extends StatefulWidget {
  const CandleChart({
    this.data,
    this.duration,
    this.candleWidth = 8,
    this.strokeWidth = 1,
    this.textColor = const Color.fromARGB(200, 255, 255, 255),
    this.gridColor = const Color.fromARGB(50, 255, 255, 255),
    this.upColor = Colors.green,
    this.downColor = Colors.red,
    this.filled = true,
    this.quoted = false,
  });

  final List<CandleData> data;
  final int duration; // sec
  final double candleWidth;
  final double strokeWidth;
  final Color textColor;
  final Color upColor;
  final Color downColor;
  final bool filled;
  final bool quoted;
  final Color gridColor;

  // Constants previously declared in the paint method
  // Moved these here to make them accessible and possibly configurable
  int get scrollDragFactor => 5;
  double get pricePaddingPercent => 15;
  double get pricePreferredDivisions => 4;
  double get gap => 2;
  double get marginTop => 14;
  double get marginBottom => 30;
  double get labelWidth => 100;
  int get visibleCandlesLimit => 500;
  int get adjustedVisibleCandleLimit =>
      visibleCandlesLimit > data.length ? data.length : visibleCandlesLimit;

  @override
  CandleChartState createState() => CandleChartState();
}

class CandleChartState extends State<CandleChart>
    with TickerProviderStateMixin {
  double timeAxisShift = 0;
  double prevTimeAxisShift = 0;
  double dynamicZoom;
  double staticZoom;
  Offset tapDownPosition;
  int touchCounter = 0;
  double maxTimeShift;
  Size canvasSize;
  Offset tapPosition;
  Map<String, dynamic> selectedPoint;

  @override
  void initState() {
    dynamicZoom = 1;
    staticZoom = 1;

    super.initState();
  }

  @override
  void didUpdateWidget(CandleChart oldWidget) {
    if (oldWidget.quoted != widget.quoted) {
      selectedPoint = null;
    }
    if (oldWidget.duration != widget.duration) {
      timeAxisShift = 0;
      staticZoom = 1;
      dynamicZoom = 1;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Listener(
        onPointerDown: (_) {
          setState(() {
            touchCounter++;
          });
        },
        onPointerUp: (_) {
          setState(() {
            touchCounter--;
          });
        },
        child: GestureDetector(
          onHorizontalDragUpdate: _onDragUpdate,
          onScaleStart: _onScaleStart,
          onScaleEnd: _onScaleEnd,
          onScaleUpdate: _onScaleUpdate,
          onTapDown: _onTapDown,
          onTap: _onTap,
          child: CustomPaint(
            painter: _ChartPainter(
              widget: widget,
              timeAxisShift: timeAxisShift,
              zoom: staticZoom * dynamicZoom,
              tapPosition: tapPosition,
              selectedPoint: selectedPoint,
              setWidgetState: _painterStateCallback,
            ),
            child: Center(
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    tapPosition = tapDownPosition;
  }

  void _onScaleStart(_) {
    setState(() {
      prevTimeAxisShift = timeAxisShift;
    });
  }

  void _onScaleEnd(_) {
    setState(() {
      staticZoom = staticZoom * dynamicZoom;
      dynamicZoom = 1;
    });
  }

  void _onTapDown(TapDownDetails details) {
    tapPosition = null;

    setState(() {
      tapDownPosition = details.localPosition;
    });
  }

  void _onDragUpdate(DragUpdateDetails drag) {
    if (touchCounter > 1) {
      return;
    }

    setState(() {
      final double adjustedDragDelta =
          drag.delta.dx / widget.scrollDragFactor / staticZoom / dynamicZoom;
      timeAxisShift = _constrainedTimeShift(
        timeAxisShift + adjustedDragDelta,
      );
    });
  }

  void _onScaleUpdate(ScaleUpdateDetails details) {
    final double constrainedZoom = _constrainedZoom(details.scale);
    if (constrainedZoom == 1) {
      return;
    }

    setState(() {
      dynamicZoom = constrainedZoom;
    });
  }

  void _painterStateCallback(String prop, dynamic value) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        switch (prop) {
          case 'maxTimeShift':
            {
              maxTimeShift = value;
              break;
            }
          case 'canvasSize':
            {
              canvasSize = value;
              break;
            }
          case 'tapPosition':
            {
              tapPosition = value;
              break;
            }
          case 'selectedPoint':
            {
              selectedPoint = value;
              break;
            }
        }
      });
    });
  }

  double _constrainedTimeShift(double timeShift) {
    final double maxTimeShiftValue = maxTimeShift ?? timeShift;
    return timeShift.clamp(0.0, maxTimeShiftValue);
  }

  double _constrainedZoom(double scale) {
    double constrained = scale;

    final double maxZoom = canvasSize.width / 5 / widget.candleWidth;
    if (staticZoom * scale > maxZoom) {
      constrained = maxZoom / staticZoom;
    }
    final double minZoom =
        canvasSize.width / widget.visibleCandlesLimit / widget.candleWidth;
    if (staticZoom * scale < minZoom) {
      constrained = minZoom / staticZoom;
    }

    return constrained;
  }
}

class _ChartPainter extends CustomPainter {
  _ChartPainter({
    @required this.widget,
    this.timeAxisShift = 0,
    this.zoom = 1,
    this.tapPosition,
    this.selectedPoint,
    this.setWidgetState,
  }) {
    painter = _initializePaint();
  }

  final CandleChart widget;
  final double timeAxisShift;
  final double zoom;
  final Offset tapPosition;
  final Map<String, dynamic> selectedPoint;
  final void Function(String, dynamic) setWidgetState;

  Paint painter;

  @override
  void paint(Canvas canvas, Size size) {
    setWidgetState('canvasSize', size);
    final double fieldHeight =
        size.height - widget.marginBottom - widget.marginTop;
    final int maxVisibleCandles =
        (size.width / (widget.candleWidth + widget.gap) / zoom)
            .floor()
            .clamp(0, widget.adjustedVisibleCandleLimit);

    setWidgetState(
      'maxTimeShift',
      (widget.data.length - maxVisibleCandles).toDouble(),
    );

    final VisibleCandles visibleCandles = _collectVisibleCandles(
      maxVisibleCandles,
      size,
      fieldHeight,
    );
    final CandleGridData gridData = visibleCandles.gridData;

    /// Converts a price to a y-coordinate for the candlestick chart.
    /// Keeping this function here to avoid the need to pass the widget, size
    /// and gridData to each call of the function.
    double _price2dy(double price) {
      final double relativePrice = price - gridData.originPrice;
      final double scaledPrice = relativePrice * gridData.priceScaleFactor;
      return size.height - widget.marginBottom - scaledPrice;
    }

    /// Converts a time to an x-coordinate for the candlestick chart.
    double _time2dx(int time) {
      final double relativeTime = time.toDouble() - gridData.timeAxisMin;
      final double scaledTime = relativeTime * gridData.timeScaleFactor;
      final double adjustment = (widget.candleWidth + widget.gap) * zoom / 2;
      return scaledTime - adjustment;
    }

    _drawCandles(visibleCandles.candles, _time2dx, _price2dy, canvas);
    _drawPriceGrid(
      size,
      gridData,
      _price2dy,
      canvas,
    );
    _drawCurrentPrice(
        visibleCandles.candles, _price2dy, size, fieldHeight, canvas);
    _drawTimeGrid(size, canvas, visibleCandles.candles, _time2dx);

    if (tapPosition != null) {
      _calculateSelectedPoint(visibleCandles.candles, _time2dx, _price2dy);
    }

    if (selectedPoint != null) {
      _drawSelectedPoint(
          visibleCandles.candles, _time2dx, _price2dy, canvas, size);
    }
  }

  VisibleCandles _collectVisibleCandles(
    int maxVisibleCandles,
    Size size,
    double fieldHeight,
  ) {
    final int firstCandleIndex =
        timeAxisShift.floor().clamp(0, widget.data.length - maxVisibleCandles);
    final int lastVisibleCandleIndex = (firstCandleIndex + maxVisibleCandles)
        .clamp(maxVisibleCandles - 1, widget.data.length - 1);
    final int firstCandleCloseTime = widget.data[firstCandleIndex].closeTime;
    final int lastCandleCloseTime =
        widget.data[lastVisibleCandleIndex].closeTime;
    final int timeRange = firstCandleCloseTime - lastCandleCloseTime;
    final double timeScaleFactor = size.width / timeRange;
    final double timeAxisMax = firstCandleCloseTime - zoom / timeScaleFactor;
    final double timeAxisMin = timeAxisMax - timeRange;

    final List<CandleData> visibleCandlesData = <CandleData>[];
    double minPrice = double.infinity;
    double maxPrice = 0;
    for (int i = firstCandleIndex; i < lastVisibleCandleIndex; i++) {
      final CandleData candle = widget.data[i];
      final double dx = (candle.closeTime - timeAxisMin) * timeScaleFactor;
      if (dx > size.width + widget.candleWidth * zoom) {
        continue;
      }
      if (dx.isNegative) {
        break;
      }

      final double lowPrice = _price(candle.lowPrice);
      final double highPrice = _price(candle.highPrice);
      if (lowPrice < minPrice) {
        minPrice = lowPrice;
      }
      if (highPrice > maxPrice) {
        maxPrice = highPrice;
      }

      visibleCandlesData.add(candle);
    }

    return VisibleCandles(
      candles: visibleCandlesData,
      gridData: _calculateGridScale(
        minPrice,
        maxPrice,
        fieldHeight,
        timeAxisMax,
        timeAxisMin,
        timeScaleFactor,
      ),
    );
  }

  CandleGridData _calculateGridScale(
    double minPrice,
    double maxPrice,
    double fieldHeight,
    double timeAxisMax,
    double timeAxisMin,
    double timeScaleFactor,
  ) {
    final double priceRange = maxPrice - minPrice;

    // Calculate the price axis, taking into account the padding
    final double padding = 2 * priceRange * widget.pricePaddingPercent / 100;
    final double priceAxis = priceRange + padding;
    final double priceScaleFactor = fieldHeight / priceAxis;
    final double priceDivision =
        _priceDivision(priceAxis, widget.pricePreferredDivisions);

    // Calculate the origin price
    final double originPrice = _calculateOriginPrice(
      minPrice,
      priceRange,
      priceDivision,
    );

    return CandleGridData(
      originPrice: originPrice,
      priceScaleFactor: priceScaleFactor,
      priceDivision: priceDivision,
      timeAxisMax: timeAxisMax,
      timeAxisMin: timeAxisMin,
      timeScaleFactor: timeScaleFactor,
    );
  }

  double _calculateOriginPrice(
      double minPrice, double priceRange, double priceDivision) {
    final double paddingForMinPrice =
        minPrice - (priceRange * widget.pricePaddingPercent / 100);
    final int roundedPrice = (paddingForMinPrice / priceDivision).round();
    final double originPrice = roundedPrice * priceDivision;
    return originPrice;
  }

  void _drawCandles(
    List<CandleData> visibleCandlesData,
    double Function(int time) _time2dx,
    double Function(double price) _price2dy,
    Canvas canvas,
  ) {
    for (final CandleData candle in visibleCandlesData) {
      final double dx = _time2dx(candle.closeTime);
      final double closePrice = _price(candle.closePrice);
      final double openPrice = _price(candle.openPrice);

      final double top = _price2dy(max(closePrice, openPrice));
      double bottom = _price2dy(min(closePrice, openPrice));
      if (bottom - top < widget.strokeWidth) {
        bottom = top + widget.strokeWidth;
      }

      final CandlePosition candlePosition = CandlePosition(
        color: closePrice < openPrice ? widget.downColor : widget.upColor,
        high: Offset(dx, _price2dy(_price(candle.highPrice))),
        low: Offset(dx, _price2dy(_price(candle.lowPrice))),
        left: dx - widget.candleWidth * zoom / 2,
        right: dx + widget.candleWidth * zoom / 2,
        top: top,
        bottom: bottom,
      );
      _drawCandle(canvas, painter, candlePosition);
    }
  }

  void _drawPriceGrid(
    Size size,
    CandleGridData gridData,
    double Function(double price) _price2dy,
    Canvas canvas,
  ) {
    final double textHeight =
        gridData.priceDivision * gridData.priceScaleFactor;
    final double divisions = size.height / textHeight;
    final int visibleDivisions = divisions.floor() + 1;
    for (int i = 0; i < visibleDivisions; i++) {
      painter.color = widget.gridColor;
      final double price = gridData.originPrice + i * gridData.priceDivision;
      final double dy = _price2dy(price);
      canvas.drawLine(Offset(0, dy), Offset(size.width, dy), painter);
      final String formattedPrice = formatPrice(price, 8);
      painter.color = widget.textColor;

      // This is to skip the first price label, which is the origin price.
      if (i < 1) {
        continue;
      }
      _drawText(
        canvas: canvas,
        point: Offset(4, dy),
        text: formattedPrice,
        color: widget.textColor,
        align: TextAlign.start,
        width: widget.labelWidth,
      );
    }
  }

  void _drawCurrentPrice(
    List<CandleData> visibleCandlesData,
    double Function(double price) _price2dy,
    Size size,
    double fieldHeight,
    Canvas canvas,
  ) {
    final double currentPrice = _price(visibleCandlesData.first.closePrice);
    double currentPriceDy = _price2dy(currentPrice);
    bool outside = false;
    if (currentPriceDy > size.height - widget.marginBottom) {
      outside = true;
      currentPriceDy = size.height - widget.marginBottom;
    }
    if (currentPriceDy < size.height - widget.marginBottom - fieldHeight) {
      outside = true;
      currentPriceDy = size.height - widget.marginBottom - fieldHeight;
    }
    final Color currentPriceColor = outside
        ? const Color.fromARGB(120, 200, 200, 150)
        : const Color.fromARGB(255, 200, 200, 150);
    painter.color = currentPriceColor;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, currentPriceDy),
        Offset(startX + 5, currentPriceDy),
        painter,
      );
      startX += 10;
    }

    _drawText(
      canvas: canvas,
      point: Offset(size.width - widget.labelWidth - 2, currentPriceDy - 2),
      text: ' ${formatPrice(currentPrice, 8)} ',
      color: Colors.black,
      backgroundColor: currentPriceColor,
      align: TextAlign.end,
      width: widget.labelWidth,
    );
  }

  void _drawTimeGrid(
    Size size,
    Canvas canvas,
    List<CandleData> visibleCandlesData,
    double Function(int time) _time2dx,
  ) {
    double rightMarkerPosition = size.width;
    if (timeAxisShift < 0) {
      rightMarkerPosition = rightMarkerPosition -
          (widget.candleWidth / 2 + widget.gap / 2 - timeAxisShift) * zoom;
    }
    _drawText(
      canvas: canvas,
      color: widget.textColor,
      point: Offset(
        rightMarkerPosition - widget.labelWidth - 4,
        size.height - 7,
      ),
      text: _formatTime(visibleCandlesData.first.closeTime),
      align: TextAlign.end,
      width: widget.labelWidth,
    );
    _drawText(
      canvas: canvas,
      color: widget.textColor,
      point: Offset(
        4,
        size.height - 7,
      ),
      text: _formatTime(visibleCandlesData.last.closeTime),
      align: TextAlign.start,
      width: widget.labelWidth,
    );
    painter.color = widget.gridColor;
    for (final CandleData candleData in visibleCandlesData) {
      final double dx = _time2dx(candleData.closeTime);
      canvas.drawLine(
        Offset(dx, size.height - widget.marginBottom),
        Offset(dx, size.height - widget.marginBottom + 5),
        painter,
      );
    }
    painter.color = widget.textColor;
    canvas.drawLine(
      Offset(0, size.height - widget.marginBottom),
      Offset(0, size.height - widget.marginBottom + 5),
      painter,
    );
    canvas.drawLine(
      Offset(rightMarkerPosition, size.height - widget.marginBottom),
      Offset(rightMarkerPosition, size.height - widget.marginBottom + 5),
      painter,
    );
  }

  void _calculateSelectedPoint(
    List<CandleData> visibleCandlesData,
    double Function(int time) _time2dx,
    double Function(double price) _price2dy,
  ) {
    setWidgetState('selectedPoint', null);
    double minDistance;
    for (final CandleData candle in visibleCandlesData) {
      final List<double> prices = [
        _price(candle.openPrice),
        _price(candle.closePrice),
        _price(candle.highPrice),
        _price(candle.lowPrice),
      ].toList();

      for (final double price in prices) {
        final double distance = sqrt(
          pow(tapPosition.dx - _time2dx(candle.closeTime), 2) +
              pow(tapPosition.dy - _price2dy(price), 2),
        );
        if (distance > 30) {
          continue;
        }
        if (minDistance != null && distance > minDistance) {
          continue;
        }

        minDistance = distance;
        setWidgetState('selectedPoint', <String, dynamic>{
          'timestamp': candle.closeTime,
          'price': price,
        });
      }
    }
    setWidgetState('tapPosition', null);
  }

  void _drawSelectedPoint(
    List<CandleData> visibleCandlesData,
    double Function(int time) _time2dx,
    double Function(double price) _price2dy,
    Canvas canvas,
    Size size,
  ) {
    CandleData selectedCandle;
    try {
      selectedCandle = visibleCandlesData.firstWhere((CandleData candle) {
        return candle.closeTime == selectedPoint['timestamp'];
      });
    } catch (_) {}

    if (selectedCandle != null) {
      const double radius = 3;
      final double dx = _time2dx(selectedCandle.closeTime);
      final double dy = _price2dy(selectedPoint['price']);
      painter.style = PaintingStyle.stroke;

      canvas.drawCircle(Offset(dx, dy), radius, painter);

      double startX = dx + radius;
      while (startX < size.width) {
        canvas.drawLine(Offset(startX, dy), Offset(startX + 5, dy), painter);
        startX += 10;
      }

      _drawText(
        canvas: canvas,
        align: TextAlign.right,
        color: widget.textColor == Colors.black ? Colors.white : Colors.black,
        backgroundColor: widget.textColor,
        text: ' ${formatPrice(selectedPoint['price'], 8)} ',
        point: Offset(size.width - widget.labelWidth - 2, dy - 2),
        width: widget.labelWidth,
      );

      double startY = dy + radius;
      while (startY < size.height - widget.marginBottom + 10) {
        canvas.drawLine(Offset(dx, startY), Offset(dx, startY + 5), painter);
        startY += 10;
      }

      _drawText(
        canvas: canvas,
        align: TextAlign.center,
        color: widget.textColor == Colors.black ? Colors.white : Colors.black,
        backgroundColor: widget.textColor,
        text: ' ${_formatTime(selectedCandle.closeTime)} ',
        point: Offset(dx - 50, size.height - 7),
        width: widget.labelWidth,
      );
    }
  } // paint

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    final _ChartPainter old = oldDelegate as _ChartPainter;

    return timeAxisShift != old.timeAxisShift ||
        zoom != old.zoom ||
        selectedPoint != old.selectedPoint ||
        tapPosition != old.tapPosition ||
        widget.data.length != old.widget.data.length;
  }

  double _priceDivision(double range, double divisions) {
    return range / divisions;
  }

  void _drawCandle(Canvas canvas, Paint paint, CandlePosition candle) {
    paint.color = candle.color;

    final Rect rect = Rect.fromLTRB(
      candle.left,
      candle.top,
      candle.right,
      candle.bottom,
    );

    canvas.drawLine(
      candle.high,
      Offset(candle.high.dx, candle.top),
      paint,
    );
    canvas.drawRect(rect, paint);
    canvas.drawLine(
      Offset(candle.low.dx, candle.bottom),
      candle.low,
      paint,
    );
  }

  double _price(double price) {
    if (widget.quoted) {
      return 1 / price;
    }
    return price;
  }

  String _formatTime(int millisecondsSinceEpoch) {
    final DateTime utc = DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch,
      isUtc: true,
    );

    const String format = 'MMM dd yyyy HH:mm';
    return DateFormat(format).format(utc.toLocal());
  }

  void _drawText({
    Canvas canvas,
    Offset point,
    String text,
    Color color,
    Color backgroundColor = Colors.transparent,
    TextAlign align,
    double width,
  }) {
    final ParagraphBuilder builder =
        ParagraphBuilder(ParagraphStyle(textAlign: align))
          ..pushStyle(
            TextStyle(
              color: color,
              fontSize: 10,
              background: Paint()..color = backgroundColor,
            ),
          )
          ..addText(text);
    final Paragraph paragraph = builder.build()
      ..layout(ParagraphConstraints(width: width));
    canvas.drawParagraph(
      paragraph,
      Offset(point.dx, point.dy - paragraph.height),
    );
  }

  Paint _initializePaint() {
    return Paint()
      ..style = widget.filled ? PaintingStyle.fill : PaintingStyle.stroke
      ..strokeWidth = widget.strokeWidth
      ..strokeCap = StrokeCap.round;
  }
}

class CandlePosition {
  CandlePosition({
    this.color,
    this.high,
    this.low,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  Color color;
  Offset high;
  Offset low;
  double top;
  double bottom;
  double left;
  double right;
}

class VisibleCandles {
  VisibleCandles({
    @required this.candles,
    @required this.gridData,
  });

  List<CandleData> candles;
  CandleGridData gridData;
}

class CandleGridData {
  CandleGridData({
    @required this.originPrice,
    @required this.priceScaleFactor,
    @required this.priceDivision,
    @required this.timeAxisMax,
    @required this.timeAxisMin,
    @required this.timeScaleFactor,
  });

  double minPrice;
  double maxPrice;
  double originPrice;
  double priceScaleFactor;
  double priceDivision;
  double timeAxisMax;
  double timeAxisMin;
  double timeScaleFactor;
}
