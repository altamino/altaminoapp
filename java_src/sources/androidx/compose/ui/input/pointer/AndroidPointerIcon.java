package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidPointerIcon implements PointerIcon {

    @NotNull
    private final android.view.PointerIcon pointerIcon;

    @NotNull
    public final android.view.PointerIcon a() {
        return this.pointerIcon;
    }

    public AndroidPointerIcon(@NotNull android.view.PointerIcon pointerIcon) {
        t.j(pointerIcon, "pointerIcon");
        this.pointerIcon = pointerIcon;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!t.e(AndroidPointerIcon.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            return t.e(this.pointerIcon, ((AndroidPointerIcon) obj).pointerIcon);
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.input.pointer.AndroidPointerIcon");
    }

    public int hashCode() {
        return this.pointerIcon.hashCode();
    }

    @NotNull
    public String toString() {
        return "AndroidPointerIcon(pointerIcon=" + this.pointerIcon + ')';
    }
}
