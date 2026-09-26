package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class NestedScrollInteropConnection implements NestedScrollConnection {

    @NotNull
    private final int[] consumedScrollCache;

    @NotNull
    private final NestedScrollingChildHelper nestedScrollChildHelper;

    @NotNull
    private final View view;

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public long d(long j6, int i10) {
        if (!this.nestedScrollChildHelper.q(NestedScrollInteropConnectionKt.g(j6), NestedScrollInteropConnectionKt.j(i10))) {
            return Offset.Companion.c();
        }
        kotlin.collections.o.s(this.consumedScrollCache, 0, 0, 0, 6, null);
        this.nestedScrollChildHelper.d(NestedScrollInteropConnectionKt.f(Offset.m(j6)), NestedScrollInteropConnectionKt.f(Offset.n(j6)), this.consumedScrollCache, null, NestedScrollInteropConnectionKt.j(i10));
        return NestedScrollInteropConnectionKt.i(this.consumedScrollCache, j6);
    }

    public NestedScrollInteropConnection(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "view");
        this.view = view;
        NestedScrollingChildHelper nestedScrollingChildHelper = new NestedScrollingChildHelper(view);
        nestedScrollingChildHelper.n(true);
        this.nestedScrollChildHelper = nestedScrollingChildHelper;
        this.consumedScrollCache = new int[2];
        ViewCompat.K0(view, true);
    }

    private final void e() {
        if (this.nestedScrollChildHelper.l(0)) {
            this.nestedScrollChildHelper.s(0);
        }
        if (this.nestedScrollChildHelper.l(1)) {
            this.nestedScrollChildHelper.s(1);
        }
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    public Object a(long j6, long j10, @NotNull kotlin.coroutines.d<? super Velocity> dVar) {
        if (!this.nestedScrollChildHelper.a(NestedScrollInteropConnectionKt.k(Velocity.h(j10)), NestedScrollInteropConnectionKt.k(Velocity.i(j10)), true)) {
            j10 = Velocity.Companion.a();
        }
        e();
        return Velocity.b(j10);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public long b(long j6, long j10, int i10) {
        if (!this.nestedScrollChildHelper.q(NestedScrollInteropConnectionKt.g(j10), NestedScrollInteropConnectionKt.j(i10))) {
            return Offset.Companion.c();
        }
        kotlin.collections.o.s(this.consumedScrollCache, 0, 0, 0, 6, null);
        this.nestedScrollChildHelper.e(NestedScrollInteropConnectionKt.f(Offset.m(j6)), NestedScrollInteropConnectionKt.f(Offset.n(j6)), NestedScrollInteropConnectionKt.f(Offset.m(j10)), NestedScrollInteropConnectionKt.f(Offset.n(j10)), null, NestedScrollInteropConnectionKt.j(i10), this.consumedScrollCache);
        return NestedScrollInteropConnectionKt.i(this.consumedScrollCache, j10);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    public Object c(long j6, @NotNull kotlin.coroutines.d<? super Velocity> dVar) {
        if (!this.nestedScrollChildHelper.b(NestedScrollInteropConnectionKt.k(Velocity.h(j6)), NestedScrollInteropConnectionKt.k(Velocity.i(j6)))) {
            j6 = Velocity.Companion.a();
        }
        e();
        return Velocity.b(j6);
    }
}
