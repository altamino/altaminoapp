package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@Stable
public final class Colors {

    @NotNull
    private final MutableState background$delegate;

    @NotNull
    private final MutableState error$delegate;

    @NotNull
    private final MutableState isLight$delegate;

    @NotNull
    private final MutableState onBackground$delegate;

    @NotNull
    private final MutableState onError$delegate;

    @NotNull
    private final MutableState onPrimary$delegate;

    @NotNull
    private final MutableState onSecondary$delegate;

    @NotNull
    private final MutableState onSurface$delegate;

    @NotNull
    private final MutableState primary$delegate;

    @NotNull
    private final MutableState primaryVariant$delegate;

    @NotNull
    private final MutableState secondary$delegate;

    @NotNull
    private final MutableState secondaryVariant$delegate;

    @NotNull
    private final MutableState surface$delegate;

    public /* synthetic */ Colors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, boolean z6, k kVar) {
        this(j6, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, z6);
    }

    private Colors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, boolean z6) {
        this.primary$delegate = SnapshotStateKt.g(Color.h(j6), SnapshotStateKt.p());
        this.primaryVariant$delegate = SnapshotStateKt.g(Color.h(j10), SnapshotStateKt.p());
        this.secondary$delegate = SnapshotStateKt.g(Color.h(j11), SnapshotStateKt.p());
        this.secondaryVariant$delegate = SnapshotStateKt.g(Color.h(j12), SnapshotStateKt.p());
        this.background$delegate = SnapshotStateKt.g(Color.h(j13), SnapshotStateKt.p());
        this.surface$delegate = SnapshotStateKt.g(Color.h(j14), SnapshotStateKt.p());
        this.error$delegate = SnapshotStateKt.g(Color.h(j15), SnapshotStateKt.p());
        this.onPrimary$delegate = SnapshotStateKt.g(Color.h(j16), SnapshotStateKt.p());
        this.onSecondary$delegate = SnapshotStateKt.g(Color.h(j17), SnapshotStateKt.p());
        this.onBackground$delegate = SnapshotStateKt.g(Color.h(j18), SnapshotStateKt.p());
        this.onSurface$delegate = SnapshotStateKt.g(Color.h(j19), SnapshotStateKt.p());
        this.onError$delegate = SnapshotStateKt.g(Color.h(j20), SnapshotStateKt.p());
        this.isLight$delegate = SnapshotStateKt.g(Boolean.valueOf(z6), SnapshotStateKt.p());
    }

    public final void A(long j6) {
        this.secondaryVariant$delegate.setValue(Color.h(j6));
    }

    public final void B(long j6) {
        this.surface$delegate.setValue(Color.h(j6));
    }

    @NotNull
    public final Colors a(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, boolean z6) {
        return new Colors(j6, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, z6, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long c() {
        return ((Color) this.background$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long d() {
        return ((Color) this.error$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long e() {
        return ((Color) this.onBackground$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long f() {
        return ((Color) this.onError$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long g() {
        return ((Color) this.onPrimary$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long h() {
        return ((Color) this.onSecondary$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long i() {
        return ((Color) this.onSurface$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long j() {
        return ((Color) this.primary$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long k() {
        return ((Color) this.primaryVariant$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long l() {
        return ((Color) this.secondary$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long m() {
        return ((Color) this.secondaryVariant$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long n() {
        return ((Color) this.surface$delegate.getValue()).v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean o() {
        return ((Boolean) this.isLight$delegate.getValue()).booleanValue();
    }

    public final void p(long j6) {
        this.background$delegate.setValue(Color.h(j6));
    }

    public final void q(long j6) {
        this.error$delegate.setValue(Color.h(j6));
    }

    public final void r(boolean z6) {
        this.isLight$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void s(long j6) {
        this.onBackground$delegate.setValue(Color.h(j6));
    }

    public final void t(long j6) {
        this.onError$delegate.setValue(Color.h(j6));
    }

    @NotNull
    public String toString() {
        return "Colors(primary=" + ((Object) Color.u(j())) + ", primaryVariant=" + ((Object) Color.u(k())) + ", secondary=" + ((Object) Color.u(l())) + ", secondaryVariant=" + ((Object) Color.u(m())) + ", background=" + ((Object) Color.u(c())) + ", surface=" + ((Object) Color.u(n())) + ", error=" + ((Object) Color.u(d())) + ", onPrimary=" + ((Object) Color.u(g())) + ", onSecondary=" + ((Object) Color.u(h())) + ", onBackground=" + ((Object) Color.u(e())) + ", onSurface=" + ((Object) Color.u(i())) + ", onError=" + ((Object) Color.u(f())) + ", isLight=" + o() + ')';
    }

    public final void u(long j6) {
        this.onPrimary$delegate.setValue(Color.h(j6));
    }

    public final void v(long j6) {
        this.onSecondary$delegate.setValue(Color.h(j6));
    }

    public final void w(long j6) {
        this.onSurface$delegate.setValue(Color.h(j6));
    }

    public final void x(long j6) {
        this.primary$delegate.setValue(Color.h(j6));
    }

    public final void y(long j6) {
        this.primaryVariant$delegate.setValue(Color.h(j6));
    }

    public final void z(long j6) {
        this.secondary$delegate.setValue(Color.h(j6));
    }
}
