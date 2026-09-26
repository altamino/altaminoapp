package androidx.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: loaded from: classes6.dex */
class ObjectAnimatorUtils {
    static <T> ObjectAnimator a(T t5, Property<T, PointF> property, Path path) {
        return ObjectAnimator.ofObject(t5, property, (TypeConverter) null, path);
    }

    private ObjectAnimatorUtils() {
    }
}
