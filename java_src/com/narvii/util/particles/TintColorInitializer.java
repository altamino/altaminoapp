package com.narvii.util.particles;

import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import com.plattysoft.leonids.Particle;
import com.plattysoft.leonids.initializers.ParticleInitializer;
import java.util.Random;

/* loaded from: classes3.dex */
public class TintColorInitializer implements ParticleInitializer {
    int blue;
    int blueRange;
    int green;
    int greenRange;
    int red;
    int redRange;

    public TintColorInitializer(int i, int i2, int i3, int i4) {
        this.red = Color.red(i);
        this.green = Color.green(i);
        this.blue = Color.blue(i);
        this.redRange = i2;
        this.greenRange = i3;
        this.blueRange = i4;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        int iNextInt = (this.red + random.nextInt(this.redRange)) - (this.redRange / 2);
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
        if (iNextInt3 < 0) {
            iNextInt3 = 0;
        } else if (iNextInt3 > 255) {
            iNextInt3 = 255;
        }
        particle.mPaint.setColorFilter(tintColorFilter(Color.rgb(iNextInt, iNextInt2, iNextInt3)));
    }

    public static ColorFilter tintColorFilter(int i) {
        return new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 0.0f, Color.red(i), 0.0f, 0.0f, 0.0f, 0.0f, Color.green(i), 0.0f, 0.0f, 0.0f, 0.0f, Color.blue(i), 0.0f, 0.0f, 0.0f, Color.alpha(i) / 255.0f, 0.0f});
    }
}
