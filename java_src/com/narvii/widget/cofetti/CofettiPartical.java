package com.narvii.widget.cofetti;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.animation.DecelerateInterpolator;
import java.util.Random;

/* loaded from: classes3.dex */
public class CofettiPartical {
    int color;
    int flipoffset;
    float flipv;
    float fv;
    float height;
    long ptime;
    float rot0;
    float rot1;
    float rotv;
    long starttime;
    int type;
    float v;
    float v0;
    float width;
    float x;
    float y;
    static final DecelerateInterpolator intep = new DecelerateInterpolator(0.8f);
    static final int[] colors = {-8692481, -184793, -12140546, -1475888, -81112, -173433, -6997505, -11829505};
    static final Path trig = new Path();

    static {
        trig.moveTo(-40.0f, -80.0f);
        trig.lineTo(120.0f, -80.0f);
        trig.lineTo(-4.0f, 56.0f);
        trig.close();
    }

    public void reset(Random random, float f, float f2, int i, int i2, float f3) {
        this.starttime = 0L;
        this.ptime = 0L;
        this.x = i * random.nextFloat();
        float fNextFloat = random.nextFloat();
        if (random.nextBoolean()) {
            this.y = ((-0.3f) - (((float) Math.pow(fNextFloat, 1.12d)) * 0.8f)) * i2;
        } else {
            this.y = ((float) Math.pow(fNextFloat, 1.22d)) * (-2.2f) * i2;
        }
        double d = this.y;
        double dSqrt = Math.sqrt(f2);
        double d2 = f3;
        Double.isNaN(d2);
        Double.isNaN(d);
        this.y = (float) (d - (dSqrt * d2));
        this.fv = f3 * ((random.nextFloat() * 150.0f) + 320.0f);
        this.v = 0.0f;
        this.v0 = 0.0f;
        float fNextFloat2 = (random.nextFloat() * (f2 - f)) + f;
        int iNextInt = random.nextInt(5);
        if (iNextInt == 0) {
            this.type = 0;
            this.width = ((float) Math.sqrt(fNextFloat2)) / 2.4f;
        } else if (iNextInt == 1) {
            this.type = 1;
            this.width = ((float) Math.sqrt(fNextFloat2)) / 1.4f;
        } else {
            this.type = 2;
            float fNextFloat3 = (random.nextFloat() * 3.0f) + 1.0f;
            this.width = (float) Math.sqrt(fNextFloat2 / fNextFloat3);
            this.height = this.width * fNextFloat3;
        }
        this.flipoffset = random.nextInt(600);
        this.flipv = (random.nextFloat() * 0.6f) + 1.2f;
        this.rot0 = random.nextFloat() * 180.0f;
        this.rot1 = random.nextFloat() * 180.0f;
        this.rotv = random.nextFloat() * 120.0f;
        int[] iArr = colors;
        this.color = iArr[random.nextInt(iArr.length)];
    }

    public boolean draw(Canvas canvas, long j, Paint paint, int i) {
        if (this.ptime != 0) {
            this.y += (((j - r0) * 1.0f) / 1000.0f) * this.v;
        }
        this.ptime = j;
        if (this.starttime != 0) {
            float f = ((j - r0) * 1.0f) / 2500.0f;
            float interpolation = f > 1.0f ? 1.0f : intep.getInterpolation(f);
            float f2 = this.v0;
            this.v = f2 + ((this.fv - f2) * interpolation);
        } else {
            this.starttime = j;
        }
        float f3 = this.y;
        float f4 = this.width;
        if (f3 < (-f4)) {
            return false;
        }
        float f5 = this.height;
        if (f3 < (-f5)) {
            return false;
        }
        float f6 = i;
        if (f3 > f4 + f6 || f3 > f6 + f5) {
            return false;
        }
        canvas.translate(this.x, f3);
        double d = ((this.flipv * (this.flipoffset + j)) / 1000.0f) * 2.0f;
        Double.isNaN(d);
        canvas.scale(1.0f, (float) Math.sin(d * 3.141592653589793d));
        canvas.rotate(this.rot0 + this.rot1 + ((this.rotv * j) / 1000.0f));
        paint.setColor(this.color);
        int i2 = this.type;
        if (i2 == 0) {
            canvas.drawCircle(0.0f, 0.0f, this.width, paint);
        } else if (i2 == 1) {
            float f7 = this.width;
            canvas.scale(f7 / 100.0f, f7 / 100.0f);
            canvas.drawPath(trig, paint);
        } else if (i2 == 2) {
            float f8 = this.width;
            float f9 = this.height;
            canvas.drawRect((-f8) / 2.0f, (-f9) / 2.0f, f8 / 2.0f, f9 / 2.0f, paint);
        }
        return true;
    }
}
