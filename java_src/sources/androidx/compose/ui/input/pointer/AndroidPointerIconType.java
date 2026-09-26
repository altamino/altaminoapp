package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class AndroidPointerIconType implements PointerIcon {
    private final int type;

    public final int a() {
        return this.type;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!t.e(AndroidPointerIconType.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            return this.type == ((AndroidPointerIconType) obj).type;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.input.pointer.AndroidPointerIconType");
    }

    public int hashCode() {
        return this.type;
    }

    @NotNull
    public String toString() {
        return "AndroidPointerIcon(type=" + this.type + ')';
    }

    public AndroidPointerIconType(int i10) {
        this.type = i10;
    }
}
