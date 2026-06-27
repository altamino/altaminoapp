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

/* loaded from: classes3.dex */
public class CofettiView extends View {
    float density;
    float density2;
    boolean drawStarted;
    Paint paint;
    List<CofettiPartical> particals;
    Random random;

    public CofettiView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.particals = new ArrayList();
        this.random = new Random();
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.density = getResources().getDisplayMetrics().density;
        float f = this.density;
        this.density2 = f * f;
        this.particals = new ArrayList();
    }

    public void clear() {
        this.particals.clear();
    }

    public void fire() {
        fire(500);
    }

    public void fire(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            CofettiPartical cofettiPartical = new CofettiPartical();
            Random random = this.random;
            float f = this.density2;
            cofettiPartical.reset(random, f * 30.0f, f * 120.0f, getWidth(), getHeight(), this.density);
            this.particals.add(cofettiPartical);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.particals.size() > 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            int height = getHeight();
            int i = 0;
            for (CofettiPartical cofettiPartical : this.particals) {
                int iSave = canvas.save();
                if (cofettiPartical.draw(canvas, jCurrentAnimationTimeMillis, this.paint, height)) {
                    i++;
                }
                canvas.restoreToCount(iSave);
            }
            if (i == 0) {
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
