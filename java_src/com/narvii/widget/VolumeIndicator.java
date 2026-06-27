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

/* loaded from: classes3.dex */
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
                float f = volumeIndicator.current = volumeIndicator.descendValue;
                volumeIndicator.descendValue = volumeIndicator.descendRate * f;
                volumeIndicator.invalidate();
                if (Math.round(f * volumeIndicator.indicatorCount) == 0) {
                    it.remove();
                }
            }
            if (VolumeIndicator.scheduleList.size() > 0) {
                VolumeIndicator.handler.postDelayed(this, 200L);
            } else {
                boolean unused = VolumeIndicator.scheduled = false;
            }
        }
    };
    private static final Handler handler = new Handler(Looper.getMainLooper());

    public VolumeIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.color = -10561792;
        this.descendRate = 0.5f;
        this.indicatorCount = 4;
        this.dp = context.getResources().getDisplayMetrics().density;
        setMinimumHeight(Math.round(this.dp * 5.0f));
        this.paint = new Paint();
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getSize(Math.max((int) (this.dp * 30.0f), getSuggestedMinimumWidth()), i), getSize(Math.max((int) (this.dp * 5.0f), getSuggestedMinimumHeight()), i2));
    }

    private static int getSize(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 0 || mode != 1073741824) ? i : View.MeasureSpec.getSize(i2);
    }

    public void setValue(float f, boolean z) {
        int iRound = Math.round(this.current * this.indicatorCount);
        if (z && this.descendValue != 0.0f) {
            this.current = Math.max(this.current, f);
        } else {
            this.current = f;
        }
        int iRound2 = Math.round(this.current * this.indicatorCount);
        if (iRound != iRound2) {
            invalidate();
        }
        if (z && iRound2 > 1) {
            this.descendValue = Math.max(this.descendValue, f * this.descendRate);
            scheduleList.add(this);
            if (scheduled) {
                return;
            }
            handler.postDelayed(update, 200L);
            scheduled = true;
            return;
        }
        this.descendValue = 0.0f;
        scheduleList.remove(this);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = (getWidth() - paddingLeft) - getPaddingRight();
        float height = (getHeight() - paddingTop) - getPaddingBottom();
        float f = paddingTop + (height * 0.5f);
        float f2 = width;
        float fMin = Math.min(height, (0.8f * f2) / this.indicatorCount) / 2.0f;
        int iRound = Math.round(this.current * this.indicatorCount);
        this.paint.setColor(this.color);
        for (int i = 0; i < iRound; i++) {
            canvas.drawCircle(paddingLeft + (((i + 0.5f) * f2) / this.indicatorCount), f, fMin, this.paint);
        }
    }
}
