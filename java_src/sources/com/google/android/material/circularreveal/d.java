package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface d extends com.google.android.material.circularreveal.c.a {

    public static class b implements TypeEvaluator<e> {
        public static final TypeEvaluator<e> CIRCULAR_REVEAL = new b();
        private final e revealInfo = new e();

        @Override // android.animation.TypeEvaluator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e evaluate(float f, @NonNull e eVar, @NonNull e eVar2) {
            this.revealInfo.b(n3.a.d(eVar.centerX, eVar2.centerX, f), n3.a.d(eVar.centerY, eVar2.centerY, f), n3.a.d(eVar.radius, eVar2.radius, f));
            return this.revealInfo;
        }
    }

    public static class c extends Property<d, e> {
        public static final Property<d, e> CIRCULAR_REVEAL = new c("circularReveal");

        private c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e get(@NonNull d dVar) {
            return dVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull d dVar, @Nullable e eVar) {
            dVar.setRevealInfo(eVar);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.circularreveal.d$d, reason: collision with other inner class name */
    public static class C0200d extends Property<d, Integer> {
        public static final Property<d, Integer> CIRCULAR_REVEAL_SCRIM_COLOR = new C0200d("circularRevealScrimColor");

        private C0200d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(@NonNull d dVar) {
            return Integer.valueOf(dVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull d dVar, @NonNull Integer num) {
            dVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {
        public static final float INVALID_RADIUS = Float.MAX_VALUE;
        public float centerX;
        public float centerY;
        public float radius;

        public boolean a() {
            return this.radius == Float.MAX_VALUE;
        }

        public void b(float f, float f6, float f7) {
            this.centerX = f;
            this.centerY = f6;
            this.radius = f7;
        }

        private e() {
        }

        public void c(@NonNull e eVar) {
            b(eVar.centerX, eVar.centerY, eVar.radius);
        }

        public e(float f, float f6, float f7) {
            this.centerX = f;
            this.centerY = f6;
            this.radius = f7;
        }

        public e(@NonNull e eVar) {
            this(eVar.centerX, eVar.centerY, eVar.radius);
        }
    }

    void a();

    void d();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    e getRevealInfo();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i10);

    void setRevealInfo(@Nullable e eVar);
}
