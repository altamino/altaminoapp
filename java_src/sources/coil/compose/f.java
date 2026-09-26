package coil.compose;

import android.os.SystemClock;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ScaleFactorKt;
import j8.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Stable
public final class f extends Painter {

    @NotNull
    private final ContentScale contentScale;
    private final int durationMillis;

    @Nullable
    private final Painter end;
    private final boolean fadeStart;
    private boolean isDone;
    private final boolean preferExactIntrinsicSize;

    @Nullable
    private Painter start;

    @NotNull
    private final MutableState invalidateTick$delegate = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
    private long startTimeMillis = -1;

    @NotNull
    private final MutableState maxAlpha$delegate = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(1.0f), null, 2, null);

    @NotNull
    private final MutableState colorFilter$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);

    private final long n(long j6, long j10) {
        Size.Companion companion = Size.Companion;
        return (j6 == companion.a() || Size.k(j6) || j10 == companion.a() || Size.k(j10)) ? j10 : ScaleFactorKt.d(j6, this.contentScale.a(j6, j10));
    }

    private final long o() {
        Painter painter = this.start;
        long jK = painter != null ? painter.k() : Size.Companion.b();
        Painter painter2 = this.end;
        long jK2 = painter2 != null ? painter2.k() : Size.Companion.b();
        Size.Companion companion = Size.Companion;
        boolean z6 = jK != companion.a();
        boolean z10 = jK2 != companion.a();
        if (z6 && z10) {
            return SizeKt.a(Math.max(Size.i(jK), Size.i(jK2)), Math.max(Size.g(jK), Size.g(jK2)));
        }
        if (this.preferExactIntrinsicSize) {
            if (z6) {
                return jK;
            }
            if (z10) {
                return jK2;
            }
        }
        return companion.a();
    }

    private final void p(DrawScope drawScope, Painter painter, float f) {
        if (painter == null || f <= 0.0f) {
            return;
        }
        long jC = drawScope.c();
        long jN = n(painter.k(), jC);
        if (jC == Size.Companion.a() || Size.k(jC)) {
            painter.j(drawScope, jN, f, q());
            return;
        }
        float f6 = 2;
        float fI = (Size.i(jC) - Size.i(jN)) / f6;
        float fG = (Size.g(jC) - Size.g(jN)) / f6;
        drawScope.T().d().f(fI, fG, fI, fG);
        painter.j(drawScope, jN, f, q());
        float f7 = -fI;
        float f10 = -fG;
        drawScope.T().d().f(f7, f10, f7, f10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ColorFilter q() {
        return (ColorFilter) this.colorFilter$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int r() {
        return ((Number) this.invalidateTick$delegate.getValue()).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final float s() {
        return ((Number) this.maxAlpha$delegate.getValue()).floatValue();
    }

    private final void t(ColorFilter colorFilter) {
        this.colorFilter$delegate.setValue(colorFilter);
    }

    private final void u(int i10) {
        this.invalidateTick$delegate.setValue(Integer.valueOf(i10));
    }

    private final void v(float f) {
        this.maxAlpha$delegate.setValue(Float.valueOf(f));
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void m(@NotNull DrawScope drawScope) {
        if (this.isDone) {
            p(drawScope, this.end, s());
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.startTimeMillis == -1) {
            this.startTimeMillis = jUptimeMillis;
        }
        float f = (jUptimeMillis - this.startTimeMillis) / this.durationMillis;
        float fM = o.m(f, 0.0f, 1.0f) * s();
        float fS = this.fadeStart ? s() - fM : s();
        this.isDone = f >= 1.0f;
        p(drawScope, this.start, fS);
        p(drawScope, this.end, fM);
        if (this.isDone) {
            this.start = null;
        } else {
            u(r() + 1);
        }
    }

    public f(@Nullable Painter painter, @Nullable Painter painter2, @NotNull ContentScale contentScale, int i10, boolean z6, boolean z10) {
        this.start = painter;
        this.end = painter2;
        this.contentScale = contentScale;
        this.durationMillis = i10;
        this.fadeStart = z6;
        this.preferExactIntrinsicSize = z10;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f) {
        v(f);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean e(@Nullable ColorFilter colorFilter) {
        t(colorFilter);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long k() {
        return o();
    }
}
