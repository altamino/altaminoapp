package androidx.transition;

import android.content.Context;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public abstract class PathMotion {
    public PathMotion() {
    }

    @NonNull
    public abstract Path a(float f, float f6, float f7, float f10);

    public PathMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
    }
}
