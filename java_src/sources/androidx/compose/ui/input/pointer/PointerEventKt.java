package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class PointerEventKt {
    public static final boolean a(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return (pointerInputChange.m() || pointerInputChange.i() || !pointerInputChange.g()) ? false : true;
    }

    public static final boolean b(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return !pointerInputChange.i() && pointerInputChange.g();
    }

    public static final boolean c(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return (pointerInputChange.m() || !pointerInputChange.i() || pointerInputChange.g()) ? false : true;
    }

    public static final boolean d(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return pointerInputChange.i() && !pointerInputChange.g();
    }

    public static final boolean e(@NotNull PointerInputChange isOutOfBounds, long j6) {
        t.j(isOutOfBounds, "$this$isOutOfBounds");
        long jF = isOutOfBounds.f();
        float fM = Offset.m(jF);
        float fN = Offset.n(jF);
        return fM < 0.0f || fM > ((float) IntSize.g(j6)) || fN < 0.0f || fN > ((float) IntSize.f(j6));
    }

    public static final boolean f(@NotNull PointerInputChange isOutOfBounds, long j6, long j10) {
        t.j(isOutOfBounds, "$this$isOutOfBounds");
        if (!PointerType.h(isOutOfBounds.k(), PointerType.Companion.d())) {
            return e(isOutOfBounds, j6);
        }
        long jF = isOutOfBounds.f();
        float fM = Offset.m(jF);
        float fN = Offset.n(jF);
        return fM < (-Size.i(j10)) || fM > ((float) IntSize.g(j6)) + Size.i(j10) || fN < (-Size.g(j10)) || fN > ((float) IntSize.f(j6)) + Size.g(j10);
    }

    public static final long g(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return i(pointerInputChange, false);
    }

    public static final long h(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return i(pointerInputChange, true);
    }

    public static final boolean j(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return !Offset.j(i(pointerInputChange, false), Offset.Companion.c());
    }

    public static final boolean k(@NotNull PointerInputChange pointerInputChange) {
        t.j(pointerInputChange, "<this>");
        return !Offset.j(i(pointerInputChange, true), Offset.Companion.c());
    }

    private static final long i(PointerInputChange pointerInputChange, boolean z6) {
        long jQ = Offset.q(pointerInputChange.f(), pointerInputChange.h());
        if (!z6 && pointerInputChange.m()) {
            return Offset.Companion.c();
        }
        return jQ;
    }
}
