package com.narvii.util.particles;

import a6.b;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class TintColorInitializer implements b {
    int blue;
    int blueRange;
    int green;
    int greenRange;
    int red;
    int redRange;

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        int iNextInt = (this.red + random.nextInt(this.redRange)) - (this.redRange / 2);
        int i10 = 0;
        if (iNextInt < 0) {
            iNextInt = 0;
        } else if (iNextInt > 255) {
            iNextInt = 255;
        }
        int iNextInt2 = (this.green + random.nextInt(this.greenRange)) - (this.greenRange / 2);
        if (iNextInt2 < 0) {
            iNextInt2 = 0;
        } else if (iNextInt2 > 255) {
            iNextInt2 = 255;
        }
        int iNextInt3 = (this.blue + random.nextInt(this.blueRange)) - (this.blueRange / 2);
        if (iNextInt3 >= 0) {
            i10 = iNextInt3 > 255 ? 255 : iNextInt3;
        }
        bVar.mPaint.setColorFilter(tintColorFilter(Color.rgb(iNextInt, iNextInt2, i10)));
    }

    public TintColorInitializer(int i10, int i11, int i12, int i13) {
        this.red = Color.red(i10);
        this.green = Color.green(i10);
        this.blue = Color.blue(i10);
        this.redRange = i11;
        this.greenRange = i12;
        this.blueRange = i13;
    }

    public static ColorFilter tintColorFilter(int i10) {
        return new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 0.0f, Color.red(i10), 0.0f, 0.0f, 0.0f, 0.0f, Color.green(i10), 0.0f, 0.0f, 0.0f, 0.0f, Color.blue(i10), 0.0f, 0.0f, 0.0f, Color.alpha(i10) / 255.0f, 0.0f});
    }
}
