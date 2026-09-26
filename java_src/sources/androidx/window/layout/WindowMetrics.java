package androidx.window.layout;

import android.graphics.Rect;
import androidx.annotation.RestrictTo;
import androidx.window.core.Bounds;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class WindowMetrics {

    @NotNull
    private final Bounds _bounds;

    public WindowMetrics(@NotNull Bounds _bounds) {
        t.j(_bounds, "_bounds");
        this._bounds = _bounds;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public WindowMetrics(@NotNull Rect bounds) {
        this(new Bounds(bounds));
        t.j(bounds, "bounds");
    }

    @NotNull
    public final Rect a() {
        return this._bounds.f();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(WindowMetrics.class, obj.getClass())) {
            return false;
        }
        return t.e(this._bounds, ((WindowMetrics) obj)._bounds);
    }

    public int hashCode() {
        return this._bounds.hashCode();
    }

    @NotNull
    public String toString() {
        return "WindowMetrics { bounds: " + a() + " }";
    }
}
