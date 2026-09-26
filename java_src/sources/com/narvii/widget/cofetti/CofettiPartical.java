package com.narvii.widget.cofetti;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.animation.DecelerateInterpolator;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class CofettiPartical {
    static final Path trig;
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

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float f3072v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    float f3073v0;
    float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f3074x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    float f3075y;
    static final DecelerateInterpolator intep = new DecelerateInterpolator(0.8f);
    static final int[] colors = {-8692481, -184793, -12140546, -1475888, -81112, -173433, -6997505, -11829505};

    static {
        Path path = new Path();
        trig = path;
        path.moveTo(-40.0f, -80.0f);
        path.lineTo(120.0f, -80.0f);
        path.lineTo(-4.0f, 56.0f);
        path.close();
    }

    public boolean draw(Canvas canvas, long j6, Paint paint, int i10) {
        long j10 = this.ptime;
        if (j10 != 0) {
            this.f3075y += (((j6 - j10) * 1.0f) / 1000.0f) * this.f3072v;
        }
        this.ptime = j6;
        long j11 = this.starttime;
        if (j11 != 0) {
            float f = ((j6 - j11) * 1.0f) / 2500.0f;
            float interpolation = f > 1.0f ? 1.0f : intep.getInterpolation(f);
            float f6 = this.f3073v0;
            this.f3072v = f6 + ((this.fv - f6) * interpolation);
        } else {
            this.starttime = j6;
        }
        float f7 = this.f3075y;
        float f10 = this.width;
        if (f7 < (-f10)) {
            return false;
        }
        float f11 = this.height;
        if (f7 < (-f11)) {
            return false;
        }
        float f12 = i10;
        if (f7 > f10 + f12 || f7 > f12 + f11) {
            return false;
        }
        canvas.translate(this.f3074x, f7);
        canvas.scale(1.0f, (float) Math.sin(((double) (((this.flipv * (((long) this.flipoffset) + j6)) / 1000.0f) * 2.0f)) * 3.141592653589793d));
        canvas.rotate(this.rot0 + this.rot1 + ((this.rotv * j6) / 1000.0f));
        paint.setColor(this.color);
        int i11 = this.type;
        if (i11 == 0) {
            canvas.drawCircle(0.0f, 0.0f, this.width, paint);
        } else if (i11 == 1) {
            float f13 = this.width;
            canvas.scale(f13 / 100.0f, f13 / 100.0f);
            canvas.drawPath(trig, paint);
        } else if (i11 == 2) {
            float f14 = this.width;
            float f15 = this.height;
            canvas.drawRect((-f14) / 2.0f, (-f15) / 2.0f, f14 / 2.0f, f15 / 2.0f, paint);
        }
        return true;
    }

    public void reset(Random random, float f, float f6, int i10, int i11, float f7) {
        this.starttime = 0L;
        this.ptime = 0L;
        this.f3074x = i10 * random.nextFloat();
        float fNextFloat = random.nextFloat();
        if (random.nextBoolean()) {
            this.f3075y = ((-0.3f) - (((float) Math.pow(fNextFloat, 1.12d)) * 0.8f)) * i11;
        } else {
            this.f3075y = ((float) Math.pow(fNextFloat, 1.22d)) * (-2.2f) * i11;
        }
        this.f3075y = (float) (((double) this.f3075y) - (Math.sqrt(f6) * ((double) f7)));
        this.fv = f7 * ((random.nextFloat() * 150.0f) + 320.0f);
        this.f3072v = 0.0f;
        this.f3073v0 = 0.0f;
        float fNextFloat2 = (random.nextFloat() * (f6 - f)) + f;
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
            float fSqrt = (float) Math.sqrt(fNextFloat2 / fNextFloat3);
            this.width = fSqrt;
            this.height = fSqrt * fNextFloat3;
        }
        this.flipoffset = random.nextInt(600);
        this.flipv = (random.nextFloat() * 0.6f) + 1.2f;
        this.rot0 = random.nextFloat() * 180.0f;
        this.rot1 = random.nextFloat() * 180.0f;
        this.rotv = random.nextFloat() * 120.0f;
        int[] iArr = colors;
        this.color = iArr[random.nextInt(iArr.length)];
    }
}
