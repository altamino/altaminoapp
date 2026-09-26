package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;

/* JADX INFO: loaded from: classes9.dex */
public final class OffsetApplier<N> implements Applier<N> {

    @NotNull
    private final Applier<N> applier;
    private int nesting;
    private final int offset;

    @Override // androidx.compose.runtime.Applier
    public /* synthetic */ void c() {
        a.b(this);
    }

    @Override // androidx.compose.runtime.Applier
    public /* synthetic */ void d() {
        a.a(this);
    }

    public OffsetApplier(@NotNull Applier<N> applier, int i10) {
        t.j(applier, "applier");
        this.applier = applier;
        this.offset = i10;
    }

    @Override // androidx.compose.runtime.Applier
    public N a() {
        return this.applier.a();
    }

    @Override // androidx.compose.runtime.Applier
    public void b(int i10, int i11) {
        this.applier.b(i10 + (this.nesting == 0 ? this.offset : 0), i11);
    }

    @Override // androidx.compose.runtime.Applier
    public void clear() {
        ComposerKt.x("Clear is not valid on OffsetApplier".toString());
        throw new i();
    }

    @Override // androidx.compose.runtime.Applier
    public void e(int i10, int i11, int i12) {
        int i13 = this.nesting == 0 ? this.offset : 0;
        this.applier.e(i10 + i13, i11 + i13, i12);
    }

    @Override // androidx.compose.runtime.Applier
    public void f(int i10, N n) {
        this.applier.f(i10 + (this.nesting == 0 ? this.offset : 0), n);
    }

    @Override // androidx.compose.runtime.Applier
    public void g(int i10, N n) {
        this.applier.g(i10 + (this.nesting == 0 ? this.offset : 0), n);
    }

    @Override // androidx.compose.runtime.Applier
    public void h(N n) {
        this.nesting++;
        this.applier.h(n);
    }

    @Override // androidx.compose.runtime.Applier
    public void i() {
        int i10 = this.nesting;
        if (!(i10 > 0)) {
            ComposerKt.x("OffsetApplier up called with no corresponding down".toString());
            throw new i();
        }
        this.nesting = i10 - 1;
        this.applier.i();
    }
}
