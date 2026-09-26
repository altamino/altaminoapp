package androidx.compose.foundation.shape;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class RoundedCornerShapeKt {

    @NotNull
    private static final RoundedCornerShape CircleShape = a(50);

    @NotNull
    public static final RoundedCornerShape d() {
        return CircleShape;
    }

    @NotNull
    public static final RoundedCornerShape b(@NotNull CornerSize corner) {
        t.j(corner, "corner");
        return new RoundedCornerShape(corner, corner, corner, corner);
    }

    @NotNull
    public static final RoundedCornerShape a(int i10) {
        return b(CornerSizeKt.a(i10));
    }

    @NotNull
    public static final RoundedCornerShape c(float f) {
        return b(CornerSizeKt.b(f));
    }
}
