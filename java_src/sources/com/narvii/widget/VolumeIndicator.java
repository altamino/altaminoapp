package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class VolumeIndicator extends View {
    private static final int DESCEND_INTERVAL = 200;
    private static boolean scheduled;
    private int color;
    private float current;
    private float descendRate;
    private float descendValue;
    private float dp;
    private int indicatorCount;
    private Paint paint;
    private static HashSet<VolumeIndicator> scheduleList = new HashSet<>();
    private static final Runnable update = new Runnable() { // from class: com.narvii.widget.VolumeIndicator.1
        @Override // java.lang.Runnable
        public void run() {
            Iterator it = VolumeIndicator.scheduleList.iterator();
            while (it.hasNext()) {
                VolumeIndicator volumeIndicator = (VolumeIndicator) it.next();
                float f = volumeIndicator.descendValue;
                volumeIndicator.current = f;
                volumeIndicator.descendValue = volumeIndicator.descendRate * f;
                volumeIndicator.invalidate();
                if (Math.round(f * volumeIndicator.indicatorCount) == 0) {
                    it.remove();
                }
            }
            if (VolumeIndicator.scheduleList.size() <= 0) {
                VolumeIndicator.scheduled = false;
            } else {
                VolumeIndicator.handler.postDelayed(this, 200L);
            }
        }
    };
    private static final Handler handler = new Handler(Looper.getMainLooper());

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(getSize(Math.max((int) (this.dp * 30.0f), getSuggestedMinimumWidth()), i10), getSize(Math.max((int) (this.dp * 5.0f), getSuggestedMinimumHeight()), i11));
    }

    public void setValue(float f, boolean z6) {
        int iRound = Math.round(this.current * this.indicatorCount);
        if (!z6 || this.descendValue == 0.0f) {
            this.current = f;
        } else {
            this.current = Math.max(this.current, f);
        }
        int iRound2 = Math.round(this.current * this.indicatorCount);
        if (iRound != iRound2) {
            invalidate();
        }
        if (!z6 || iRound2 <= 1) {
            this.descendValue = 0.0f;
            scheduleList.remove(this);
            return;
        }
        this.descendValue = Math.max(this.descendValue, f * this.descendRate);
        scheduleList.add(this);
        if (scheduled) {
            return;
        }
        handler.postDelayed(update, 200L);
        scheduled = true;
    }

    public VolumeIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.color = -10561792;
        this.descendRate = 0.5f;
        this.indicatorCount = 4;
        float f = context.getResources().getDisplayMetrics().density;
        this.dp = f;
        setMinimumHeight(Math.round(f * 5.0f));
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.paint.setAntiAlias(true);
    }

    private static int getSize(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824) {
            return size;
        }
        return i10;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = (getWidth() - paddingLeft) - getPaddingRight();
        float height = (getHeight() - paddingTop) - getPaddingBottom();
        float f = paddingTop + (height * 0.5f);
        float f6 = width;
        float fMin = Math.min(height, (0.8f * f6) / this.indicatorCount) / 2.0f;
        int iRound = Math.round(this.current * this.indicatorCount);
        this.paint.setColor(this.color);
        for (int i10 = 0; i10 < iRound; i10++) {
            canvas.drawCircle(paddingLeft + (((i10 + 0.5f) * f6) / this.indicatorCount), f, fMin, this.paint);
        }
    }
}
