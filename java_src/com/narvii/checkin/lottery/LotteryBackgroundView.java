package com.narvii.checkin.lottery;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public class LotteryBackgroundView extends View {
    public static final int CIRCLE_LIVE_TIME = 10000;
    public static final int COLOR_BACKGROUND = -8047241;
    public static final int MIN_DP = 25;
    public static final int OVERLAY_COLOR = 855616416;
    float angleSpeed;
    int centerX;
    int centerY;
    LinkedList<Circle> circleList;
    long lastDrawTime;
    boolean lastOverlayColor;
    float maxRadius;
    float minRadius;
    Paint paint;
    float radiusSpeed;
    int savedLayerType;

    static class Circle {
        public static List<Integer> starIdList = new ArrayList();
        public boolean overlayColor;
        public float radius;
        public double starAngle;
        public int starId;

        static {
            starIdList.add(Integer.valueOf(R.drawable.ic_lottery_star_0));
            starIdList.add(Integer.valueOf(R.drawable.ic_lottery_star_1));
            starIdList.add(Integer.valueOf(R.drawable.ic_lottery_star_2));
        }

        public Circle(float f, boolean z) {
            this.radius = f;
            this.overlayColor = z;
            List<Integer> list = starIdList;
            double dRandom = Math.random();
            double size = starIdList.size();
            Double.isNaN(size);
            this.starId = list.get((int) (dRandom * size)).intValue();
            this.starAngle = Math.random() * 360.0d;
        }
    }

    public LotteryBackgroundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.circleList = new LinkedList<>();
        this.lastDrawTime = 0L;
        this.minRadius = 0.0f;
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setColor(OVERLAY_COLOR);
        this.paint.setStyle(Paint.Style.FILL);
        this.savedLayerType = getLayerType();
        setLayerType(1, null);
        this.angleSpeed = 0.036f;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        try {
            try {
                Path path = new Path();
                float dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.lottery_dialog_radius);
                path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), dimensionPixelSize, dimensionPixelSize, Path.Direction.CW);
                canvas.clipPath(path);
                super.draw(canvas);
            } catch (Exception unused) {
                super.draw(canvas);
            }
        } finally {
            canvas.restore();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.circleList.clear();
        this.lastDrawTime = 0L;
        this.centerX = getWidth() / 2;
        this.centerY = getHeight() / 2;
        this.maxRadius = (float) Math.sqrt(Math.pow(getWidth() / 2, 2.0d) + Math.pow(getHeight() / 2, 2.0d));
        this.radiusSpeed = this.maxRadius / 10000.0f;
        this.minRadius = Utils.dpToPx(getContext(), 25.0f);
        float f = this.minRadius;
        boolean z = false;
        while (f < this.maxRadius) {
            this.circleList.addFirst(new Circle(f, z));
            f += this.minRadius;
            z = !z;
        }
    }

    public void revertLayerType() {
        if (Build.VERSION.SDK_INT >= 18) {
            setLayerType(this.savedLayerType, null);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawCircles(canvas);
    }

    private void drawCircles(Canvas canvas) {
        canvas.drawColor(COLOR_BACKGROUND);
        if (this.lastDrawTime == 0) {
            this.lastDrawTime = SystemClock.elapsedRealtime();
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        float f = this.radiusSpeed * 16.0f;
        float f2 = this.angleSpeed * 16.0f;
        Iterator<Circle> it = this.circleList.iterator();
        while (it.hasNext()) {
            Circle next = it.next();
            this.paint.setColor(next.overlayColor ? OVERLAY_COLOR : COLOR_BACKGROUND);
            next.radius += f;
            canvas.drawCircle(this.centerX, this.centerY, next.radius, this.paint);
            if (next.radius >= this.maxRadius + this.minRadius) {
                it.remove();
            }
        }
        Iterator<Circle> it2 = this.circleList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Circle next2 = it2.next();
            double d = next2.starAngle;
            double d2 = f2;
            Double.isNaN(d2);
            next2.starAngle = d + d2;
            Bitmap bitmap = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), next2.starId)).getBitmap();
            double d3 = (next2.starAngle / 180.0d) * 3.141592653589793d;
            double d4 = this.centerX;
            double d5 = next2.radius;
            double dSin = Math.sin(d3);
            Double.isNaN(d5);
            Double.isNaN(d4);
            double d6 = this.centerY;
            double d7 = next2.radius;
            double dCos = Math.cos(d3);
            Double.isNaN(d7);
            Double.isNaN(d6);
            canvas.drawBitmap(bitmap, ((float) (d4 + (d5 * dSin))) - (bitmap.getWidth() / 2.0f), ((float) (d6 + (d7 * dCos))) - (bitmap.getHeight() / 2.0f), (Paint) null);
        }
        canvas.drawColor(90177536);
        Circle last = this.circleList.isEmpty() ? null : this.circleList.getLast();
        if (last != null && last.radius > this.minRadius) {
            this.lastOverlayColor = !this.lastOverlayColor;
            this.circleList.addLast(new Circle(0.0f, this.lastOverlayColor));
        }
        this.lastDrawTime = jElapsedRealtime;
        invalidate();
    }
}
