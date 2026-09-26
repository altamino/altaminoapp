package androidx.core.graphics;

import android.graphics.Rect;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes6.dex */
public final class Insets {

    @NonNull
    public static final Insets NONE = new Insets(0, 0, 0, 0);
    public final int bottom;
    public final int left;
    public final int right;
    public final int top;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Insets.class != obj.getClass()) {
            return false;
        }
        Insets insets = (Insets) obj;
        return this.bottom == insets.bottom && this.left == insets.left && this.right == insets.right && this.top == insets.top;
    }

    public int hashCode() {
        return (((((this.left * 31) + this.top) * 31) + this.right) * 31) + this.bottom;
    }

    @RequiresApi
    static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static android.graphics.Insets a(int i10, int i11, int i12, int i13) {
            return android.graphics.Insets.of(i10, i11, i12, i13);
        }
    }

    @NonNull
    public static Insets a(@NonNull Insets insets, @NonNull Insets insets2) {
        return b(Math.max(insets.left, insets2.left), Math.max(insets.top, insets2.top), Math.max(insets.right, insets2.right), Math.max(insets.bottom, insets2.bottom));
    }

    @NonNull
    public static Insets b(int i10, int i11, int i12, int i13) {
        return (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) ? NONE : new Insets(i10, i11, i12, i13);
    }

    @NonNull
    public static Insets c(@NonNull Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    @NonNull
    @RequiresApi
    public android.graphics.Insets e() {
        return Api29Impl.a(this.left, this.top, this.right, this.bottom);
    }

    @NonNull
    public String toString() {
        return "Insets{left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + b.END_OBJ;
    }

    private Insets(int i10, int i11, int i12, int i13) {
        this.left = i10;
        this.top = i11;
        this.right = i12;
        this.bottom = i13;
    }

    @NonNull
    @RequiresApi
    public static Insets d(@NonNull android.graphics.Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }
}
