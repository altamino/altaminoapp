package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class TransformGestureDetectorKt {
    public static final long b(@NotNull PointerEvent pointerEvent, boolean z6) {
        t.j(pointerEvent, "<this>");
        long jC = Offset.Companion.c();
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            PointerInputChange pointerInputChange = listC.get(i11);
            if (pointerInputChange.g() && pointerInputChange.i()) {
                jC = Offset.r(jC, z6 ? pointerInputChange.f() : pointerInputChange.h());
                i10++;
            }
        }
        return i10 == 0 ? Offset.Companion.b() : Offset.h(jC, i10);
    }

    public static final float c(@NotNull PointerEvent pointerEvent, boolean z6) {
        t.j(pointerEvent, "<this>");
        long jB = b(pointerEvent, z6);
        float fK = 0.0f;
        if (Offset.j(jB, Offset.Companion.b())) {
            return 0.0f;
        }
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            PointerInputChange pointerInputChange = listC.get(i11);
            if (pointerInputChange.g() && pointerInputChange.i()) {
                fK += Offset.k(Offset.q(z6 ? pointerInputChange.f() : pointerInputChange.h(), jB));
                i10++;
            }
        }
        return fK / i10;
    }

    public static final long d(@NotNull PointerEvent pointerEvent) {
        t.j(pointerEvent, "<this>");
        long jB = b(pointerEvent, true);
        Offset.Companion companion = Offset.Companion;
        return Offset.j(jB, companion.b()) ? companion.c() : Offset.q(jB, b(pointerEvent, false));
    }

    public static final float e(@NotNull PointerEvent pointerEvent) {
        t.j(pointerEvent, "<this>");
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = 1;
            if (i10 >= size) {
                break;
            }
            PointerInputChange pointerInputChange = listC.get(i10);
            if (!pointerInputChange.i() || !pointerInputChange.g()) {
                i12 = 0;
            }
            i11 += i12;
            i10++;
        }
        if (i11 < 2) {
            return 0.0f;
        }
        long jB = b(pointerEvent, true);
        long jB2 = b(pointerEvent, false);
        List<PointerInputChange> listC2 = pointerEvent.c();
        int size2 = listC2.size();
        float f = 0.0f;
        float f6 = 0.0f;
        for (int i13 = 0; i13 < size2; i13++) {
            PointerInputChange pointerInputChange2 = listC2.get(i13);
            if (pointerInputChange2.g() && pointerInputChange2.i()) {
                long jF = pointerInputChange2.f();
                long jQ = Offset.q(pointerInputChange2.h(), jB2);
                long jQ2 = Offset.q(jF, jB);
                float fA = a(jQ2) - a(jQ);
                float fK = Offset.k(Offset.r(jQ2, jQ)) / 2.0f;
                if (fA > 180.0f) {
                    fA -= 360.0f;
                } else if (fA < -180.0f) {
                    fA += 360.0f;
                }
                f6 += fA * fK;
                f += fK;
            }
        }
        if (f == 0.0f) {
            return 0.0f;
        }
        return f6 / f;
    }

    public static final float f(@NotNull PointerEvent pointerEvent) {
        t.j(pointerEvent, "<this>");
        float fC = c(pointerEvent, true);
        float fC2 = c(pointerEvent, false);
        if (fC == 0.0f || fC2 == 0.0f) {
            return 1.0f;
        }
        return fC / fC2;
    }

    private static final float a(long j6) {
        if (Offset.m(j6) == 0.0f && Offset.n(j6) == 0.0f) {
            return 0.0f;
        }
        return ((-((float) Math.atan2(Offset.m(j6), Offset.n(j6)))) * 180.0f) / 3.1415927f;
    }
}
