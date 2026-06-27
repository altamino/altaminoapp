package com.narvii.util.particles;

import android.app.Activity;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.narvii.amino.mastes.R;
import com.plattysoft.leonids.ParticleSystem;
import com.plattysoft.leonids.modifiers.AlphaModifier;

/* loaded from: classes3.dex */
public class ParticlesHelper {
    public int resId = R.drawable.ic_vote_heart;
    int duration = 1000;
    boolean spark = false;
    int direction = -90;
    int directionRange = 100;
    int birthRate = 20;
    int birthRateTo = 5;
    int lifetime = 1000;
    float g = 60.0f;
    float v = 200.0f;
    float vRange = 60.0f;
    float initAlpha = 0.8f;
    float initScale = 0.15f;
    float scaleSpeed = 1.0f;
    int rotateRange = 360;
    int tintColor = 0;
    int tintRangeR = 120;
    int tintRangeG = 200;
    int tintRangeB = 50;
    float tintRatio = 0.0f;

    public long duration() {
        return this.duration == 0 ? this.lifetime : r0 + (this.lifetime / 2);
    }

    public ParticlesHelper l0() {
        this.directionRange = 30;
        this.birthRate = 1;
        this.birthRateTo = 0;
        this.duration = 0;
        this.lifetime = 800;
        this.v = 165.0f;
        this.vRange = 25.0f;
        this.g = 20.0f;
        this.initAlpha = 1.0f;
        this.initScale = 0.45f;
        this.scaleSpeed = 0.65f;
        this.rotateRange = 360;
        return this;
    }

    public ParticlesHelper l1() {
        this.directionRange = 100;
        this.birthRate = 15;
        this.birthRateTo = 6;
        this.duration = 800;
        this.lifetime = 1000;
        this.v = 120.0f;
        this.vRange = 60.0f;
        this.g = 20.0f;
        this.initAlpha = 0.8f;
        this.initScale = 0.15f;
        this.scaleSpeed = 0.5f;
        this.rotateRange = 360;
        return this;
    }

    public ParticlesHelper l2() {
        this.directionRange = 100;
        this.birthRate = 20;
        this.birthRateTo = 8;
        this.duration = 1000;
        this.lifetime = 1000;
        this.v = 140.0f;
        this.vRange = 60.0f;
        this.g = 20.0f;
        this.initAlpha = 0.8f;
        this.initScale = 0.15f;
        this.scaleSpeed = 0.7f;
        this.rotateRange = 360;
        return this;
    }

    public ParticlesHelper l3() {
        this.directionRange = 100;
        this.birthRate = 25;
        this.birthRateTo = 10;
        this.duration = 1200;
        this.lifetime = 1000;
        this.v = 160.0f;
        this.vRange = 60.0f;
        this.g = 20.0f;
        this.initAlpha = 0.8f;
        this.initScale = 0.15f;
        this.scaleSpeed = 0.8f;
        this.rotateRange = 360;
        return this;
    }

    public ParticlesHelper l4() {
        this.directionRange = 100;
        this.birthRate = 30;
        this.birthRateTo = 12;
        this.duration = 1500;
        this.lifetime = 1000;
        this.v = 200.0f;
        this.vRange = 60.0f;
        this.g = 60.0f;
        this.initAlpha = 0.8f;
        this.tintColor = -168999;
        this.tintRangeR = 128;
        this.tintRangeG = 204;
        this.tintRangeB = 52;
        this.tintRatio = 0.3334f;
        this.initScale = 0.15f;
        this.scaleSpeed = 1.0f;
        this.rotateRange = 360;
        return this;
    }

    public ParticlesHelper l5() {
        this.directionRange = 100;
        this.birthRate = 35;
        this.birthRateTo = 13;
        this.duration = 1500;
        this.lifetime = 1000;
        this.v = 220.0f;
        this.vRange = 60.0f;
        this.g = 60.0f;
        this.initAlpha = 0.8f;
        this.tintColor = -168999;
        this.tintRangeR = 128;
        this.tintRangeG = 204;
        this.tintRangeB = 52;
        this.tintRatio = 0.3334f;
        this.initScale = 0.15f;
        this.scaleSpeed = 1.0f;
        this.rotateRange = 360;
        this.spark = true;
        return this;
    }

    public void emit(View view) {
        boolean z = this.duration == 0;
        Activity activity = (Activity) view.getContext();
        int iMax = this.birthRate;
        if (!z) {
            iMax = (Math.max(iMax, this.birthRateTo) * this.lifetime) / 1000;
        }
        ParticleSystem particleSystem = new ParticleSystem(activity, iMax, this.resId, this.lifetime);
        particleSystem.addInitializer(new SpeeddInitializer(this.direction, this.directionRange, particleSystem.dpToPx((this.v - (this.vRange / 2.0f)) / 1000.0f), particleSystem.dpToPx((this.v + (this.vRange / 2.0f)) / 1000.0f)));
        if (!z) {
            int i = this.birthRate;
            int i2 = this.duration;
            particleSystem.addInitializer(new EliminateInitializer((i * i2) / 1000, (((i - this.birthRateTo) * i2) / 1000) / 2));
        }
        if (this.tintRatio > 0.0f) {
            particleSystem.addInitializer(new RandomInitalizer(new TintColorInitializer(this.tintColor, this.tintRangeR, this.tintRangeG, this.tintRangeB), this.tintRatio));
        }
        particleSystem.addModifier(new AlphaModifier((int) (this.initAlpha * 255.0f), 0, 0L, this.lifetime, new LinearInterpolator()));
        float f = this.initScale;
        float f2 = this.scaleSpeed;
        int i3 = this.lifetime;
        particleSystem.addModifier(new ScaleModifier(f, ((f2 * i3) / 1000.0f) + f, i3, new DecelerateInterpolator()));
        particleSystem.setAcceleration((this.g / 1000.0f) / 800.0f, 90);
        int i4 = this.rotateRange;
        particleSystem.setRotationSpeedRange((-i4) / 2, i4 / 2);
        if (z) {
            particleSystem.oneShot(view, this.birthRate);
        } else {
            particleSystem.emit(view, this.birthRate, this.duration);
        }
        if (this.spark) {
            long j = 800;
            ParticleSystem particleSystem2 = new ParticleSystem((Activity) view.getContext(), (Math.max(700, 100) * 800) / 1000, R.drawable.spark, j);
            float f3 = 20;
            particleSystem2.addInitializer(new SpeeddInitializer(this.direction, 360.0f, particleSystem2.dpToPx((this.v - f3) / 1000.0f), particleSystem2.dpToPx((this.v + f3) / 1000.0f)));
            int i5 = this.duration;
            particleSystem2.addInitializer(new EliminateInitializer((i5 * 700) / 1000, ((600 * i5) / 1000) / 2));
            particleSystem2.addInitializer(new TintColorInitializer(-3355444, 128, 64, 64));
            particleSystem2.addModifier(new AlphaModifier((int) 255.0f, 0, 0L, j, new LinearInterpolator()));
            particleSystem2.setScaleRange(0.1f, 0.4f);
            particleSystem2.setInitialRotationRange(-180, 180);
            particleSystem2.setRotationSpeedRange(50.0f, 70.0f);
            particleSystem2.emit(view, 700, this.duration);
        }
    }
}
