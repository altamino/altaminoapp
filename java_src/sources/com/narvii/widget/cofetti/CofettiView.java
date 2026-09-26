package com.narvii.widget.cofetti;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class CofettiView extends View {
    float density;
    float density2;
    boolean drawStarted;
    Paint paint;
    List<CofettiPartical> particals;
    Random random;

    public void fire() {
        fire(500);
    }

    public void clear() {
        this.particals.clear();
    }

    public void fire(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            CofettiPartical cofettiPartical = new CofettiPartical();
            Random random = this.random;
            float f = this.density2;
            cofettiPartical.reset(random, 30.0f * f, 120.0f * f, getWidth(), getHeight(), this.density);
            this.particals.add(cofettiPartical);
        }
        invalidate();
    }

    public CofettiView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.particals = new ArrayList();
        this.random = new Random();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        float f = getResources().getDisplayMetrics().density;
        this.density = f;
        this.density2 = f * f;
        this.particals = new ArrayList();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.particals.size() > 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            int height = getHeight();
            int i10 = 0;
            for (CofettiPartical cofettiPartical : this.particals) {
                int iSave = canvas.save();
                if (cofettiPartical.draw(canvas, jCurrentAnimationTimeMillis, this.paint, height)) {
                    i10++;
                }
                canvas.restoreToCount(iSave);
            }
            if (i10 == 0) {
                if (this.drawStarted) {
                    this.particals.clear();
                    this.drawStarted = false;
                    return;
                } else {
                    invalidate();
                    return;
                }
            }
            if (!this.drawStarted) {
                this.drawStarted = true;
            }
            invalidate();
        }
    }
}
