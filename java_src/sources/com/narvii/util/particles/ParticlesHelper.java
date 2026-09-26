package com.narvii.util.particles;

import android.app.Activity;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.compose.runtime.ComposerKt;
import b6.a;
import com.narvii.amino.master.R;
import com.plattysoft.leonids.d;

/* JADX INFO: loaded from: classes9.dex */
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

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float f2852v = 200.0f;
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

    public ParticlesHelper l0() {
        this.directionRange = 30;
        this.birthRate = 1;
        this.birthRateTo = 0;
        this.duration = 0;
        this.lifetime = 800;
        this.f2852v = 165.0f;
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
        this.f2852v = 120.0f;
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
        this.f2852v = 140.0f;
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
        this.f2852v = 160.0f;
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
        this.f2852v = 200.0f;
        this.vRange = 60.0f;
        this.g = 60.0f;
        this.initAlpha = 0.8f;
        this.tintColor = -168999;
        this.tintRangeR = 128;
        this.tintRangeG = ComposerKt.providerMapsKey;
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
        this.f2852v = 220.0f;
        this.vRange = 60.0f;
        this.g = 60.0f;
        this.initAlpha = 0.8f;
        this.tintColor = -168999;
        this.tintRangeR = 128;
        this.tintRangeG = ComposerKt.providerMapsKey;
        this.tintRangeB = 52;
        this.tintRatio = 0.3334f;
        this.initScale = 0.15f;
        this.scaleSpeed = 1.0f;
        this.rotateRange = 360;
        this.spark = true;
        return this;
    }

    public long duration() {
        int i10 = this.duration;
        return i10 == 0 ? this.lifetime : i10 + (this.lifetime / 2);
    }

    public void emit(View view) {
        boolean z6 = this.duration == 0;
        Activity activity = (Activity) view.getContext();
        int iMax = this.birthRate;
        if (!z6) {
            iMax = (Math.max(iMax, this.birthRateTo) * this.lifetime) / 1000;
        }
        d dVar = new d(activity, iMax, this.resId, this.lifetime);
        dVar.d(new SpeeddInitializer(this.direction, this.directionRange, dVar.h((this.f2852v - (this.vRange / 2.0f)) / 1000.0f), dVar.h((this.f2852v + (this.vRange / 2.0f)) / 1000.0f)));
        if (!z6) {
            int i10 = this.birthRate;
            int i11 = this.duration;
            dVar.d(new EliminateInitializer((i10 * i11) / 1000, (((i10 - this.birthRateTo) * i11) / 1000) / 2));
        }
        if (this.tintRatio > 0.0f) {
            dVar.d(new RandomInitalizer(new TintColorInitializer(this.tintColor, this.tintRangeR, this.tintRangeG, this.tintRangeB), this.tintRatio));
        }
        dVar.e(new a((int) (this.initAlpha * 255.0f), 0, 0L, this.lifetime, new LinearInterpolator()));
        float f = this.initScale;
        float f6 = this.scaleSpeed;
        int i12 = this.lifetime;
        dVar.e(new ScaleModifier(f, ((f6 * i12) / 1000.0f) + f, i12, new DecelerateInterpolator()));
        dVar.p((this.g / 1000.0f) / 800.0f, 90);
        int i13 = this.rotateRange;
        dVar.r((-i13) / 2, i13 / 2);
        if (z6) {
            dVar.n(view, this.birthRate);
        } else {
            dVar.i(view, this.birthRate, this.duration);
        }
        if (this.spark) {
            long j6 = 800;
            d dVar2 = new d((Activity) view.getContext(), (Math.max(700, 100) * 800) / 1000, R.drawable.spark, j6);
            float f7 = 20;
            dVar2.d(new SpeeddInitializer(this.direction, 360.0f, dVar2.h((this.f2852v - f7) / 1000.0f), dVar2.h((this.f2852v + f7) / 1000.0f)));
            int i14 = this.duration;
            dVar2.d(new EliminateInitializer((i14 * 700) / 1000, ((600 * i14) / 1000) / 2));
            dVar2.d(new TintColorInitializer(-3355444, 128, 64, 64));
            dVar2.e(new a((int) 255.0f, 0, 0L, j6, new LinearInterpolator()));
            dVar2.s(0.1f, 0.4f);
            dVar2.q(-180, 180);
            dVar2.r(50.0f, 70.0f);
            dVar2.i(view, 700, this.duration);
        }
    }
}
