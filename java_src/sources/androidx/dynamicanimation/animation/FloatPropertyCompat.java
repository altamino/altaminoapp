package androidx.dynamicanimation.animation;

import android.util.FloatProperty;

/* JADX INFO: loaded from: classes9.dex */
public abstract class FloatPropertyCompat<T> {
    final String mPropertyName;

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.FloatPropertyCompat$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    final class AnonymousClass1 extends FloatPropertyCompat<Object> {
        final /* synthetic */ FloatProperty val$property;

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void a(Object obj, float f) {
            this.val$property.setValue(obj, f);
        }
    }

    public abstract void a(T t5, float f);

    public FloatPropertyCompat(String str) {
        this.mPropertyName = str;
    }
}
