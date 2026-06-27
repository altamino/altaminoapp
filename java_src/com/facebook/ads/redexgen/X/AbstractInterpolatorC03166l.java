package com.facebook.ads.redexgen.X;

import android.view.animation.Interpolator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6l, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractInterpolatorC03166l implements Interpolator {
    private final float A00;
    private final float[] A01;

    public AbstractInterpolatorC03166l(float[] fArr) {
        this.A01 = fArr;
        this.A00 = 1.0f / (this.A01.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        AbstractInterpolatorC03166l abstractInterpolatorC03166l = this;
        float f2 = 1.0f;
        float f3 = 0.0f;
        float weight = f >= 1.0f ? 2.8E-45f : 4.2E-45f;
        while (true) {
            switch (weight) {
                case 2.8E-45f:
                    return f2;
                case 4.2E-45f:
                    f3 = 0.0f;
                    if (f > 0.0f) {
                        weight = 7.0E-45f;
                        break;
                    } else {
                        weight = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    f2 = f3;
                    weight = 2.8E-45f;
                    break;
                case 7.0E-45f:
                    abstractInterpolatorC03166l = abstractInterpolatorC03166l;
                    int iMin = Math.min((int) ((abstractInterpolatorC03166l.A01.length - 1) * f), abstractInterpolatorC03166l.A01.length - 2);
                    float f4 = f - (iMin * abstractInterpolatorC03166l.A00);
                    float quantized = abstractInterpolatorC03166l.A00;
                    float f5 = f4 / quantized;
                    float f6 = abstractInterpolatorC03166l.A01[iMin];
                    float f7 = abstractInterpolatorC03166l.A01[iMin + 1];
                    float weight2 = abstractInterpolatorC03166l.A01[iMin];
                    f2 = f6 + ((f7 - weight2) * f5);
                    weight = 2.8E-45f;
                    break;
            }
        }
    }
}
