package com.narvii.checkin.lottery;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
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
        public static List<Integer> starIdList;
        public boolean overlayColor;
        public float radius;
        public int starId = starIdList.get((int) (Math.random() * ((double) starIdList.size()))).intValue();
        public double starAngle = Math.random() * 360.0d;

        static {
            ArrayList arrayList = new ArrayList();
            starIdList = arrayList;
            arrayList.add(Integer.valueOf(R.drawable.ic_lottery_star_0));
            starIdList.add(Integer.valueOf(R.drawable.ic_lottery_star_1));
            starIdList.add(Integer.valueOf(R.drawable.ic_lottery_star_2));
        }

        public Circle(float f, boolean z6) {
            this.radius = f;
            this.overlayColor = z6;
        }
    }

    private void drawCircles(Canvas canvas) {
        canvas.drawColor(COLOR_BACKGROUND);
        if (this.lastDrawTime == 0) {
            this.lastDrawTime = SystemClock.elapsedRealtime();
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        float f = this.radiusSpeed * 16.0f;
        float f6 = this.angleSpeed * 16.0f;
        Iterator<Circle> it = this.circleList.iterator();
        while (it.hasNext()) {
            Circle next = it.next();
            this.paint.setColor(next.overlayColor ? OVERLAY_COLOR : -8047241);
            float f7 = next.radius + f;
            next.radius = f7;
            canvas.drawCircle(this.centerX, this.centerY, f7, this.paint);
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
            next2.starAngle += (double) f6;
            Bitmap bitmap = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), next2.starId)).getBitmap();
            double d = (next2.starAngle / 180.0d) * 3.141592653589793d;
            canvas.drawBitmap(bitmap, ((float) (((double) this.centerX) + (((double) next2.radius) * Math.sin(d)))) - (bitmap.getWidth() / 2.0f), ((float) (((double) this.centerY) + (((double) next2.radius) * Math.cos(d)))) - (bitmap.getHeight() / 2.0f), (Paint) null);
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

    public void revertLayerType() {
        setLayerType(this.savedLayerType, null);
    }

    public LotteryBackgroundView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.circleList = new LinkedList<>();
        this.lastDrawTime = 0L;
        this.minRadius = 0.0f;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
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
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawCircles(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.circleList.clear();
        this.lastDrawTime = 0L;
        this.centerX = getWidth() / 2;
        this.centerY = getHeight() / 2;
        float fSqrt = (float) Math.sqrt(Math.pow(getWidth() / 2, 2.0d) + Math.pow(getHeight() / 2, 2.0d));
        this.maxRadius = fSqrt;
        this.radiusSpeed = fSqrt / 10000.0f;
        float fDpToPx = Utils.dpToPx(getContext(), 25.0f);
        this.minRadius = fDpToPx;
        boolean z6 = false;
        while (fDpToPx < this.maxRadius) {
            this.circleList.addFirst(new Circle(fDpToPx, z6));
            fDpToPx += this.minRadius;
            z6 = !z6;
        }
    }
}
