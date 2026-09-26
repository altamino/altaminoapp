package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import e8.l;
import java.util.List;
import kotlin.collections.v;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {

    @NotNull
    private final List<EdgeEffect> allEffects;

    @NotNull
    private final EdgeEffect bottomEffect;

    @NotNull
    private final EdgeEffect bottomEffectNegation;
    private long containerSize;

    @NotNull
    private final Modifier effectModifier;
    private boolean invalidationEnabled;
    private boolean isEnabled;

    @NotNull
    private final MutableState<Boolean> isEnabledState;

    @NotNull
    private final EdgeEffect leftEffect;

    @NotNull
    private final EdgeEffect leftEffectNegation;

    @NotNull
    private final l<IntSize, l0> onNewSize;

    @NotNull
    private final OverscrollConfiguration overscrollConfig;

    @NotNull
    private final MutableState<l0> redrawSignal;

    @NotNull
    private final EdgeEffect rightEffect;

    @NotNull
    private final EdgeEffect rightEffectNegation;
    private boolean scrollCycleInProgress;

    @NotNull
    private final EdgeEffect topEffect;

    @NotNull
    private final EdgeEffect topEffectNegation;

    @Override // androidx.compose.foundation.OverscrollEffect
    @Nullable
    public Object a(long j6, @NotNull d<? super l0> dVar) {
        this.scrollCycleInProgress = false;
        if (Velocity.h(j6) > 0.0f) {
            EdgeEffectCompat.INSTANCE.c(this.leftEffect, g8.c.c(Velocity.h(j6)));
        } else if (Velocity.h(j6) < 0.0f) {
            EdgeEffectCompat.INSTANCE.c(this.rightEffect, -g8.c.c(Velocity.h(j6)));
        }
        if (Velocity.i(j6) > 0.0f) {
            EdgeEffectCompat.INSTANCE.c(this.topEffect, g8.c.c(Velocity.i(j6)));
        } else if (Velocity.i(j6) < 0.0f) {
            EdgeEffectCompat.INSTANCE.c(this.bottomEffect, -g8.c.c(Velocity.i(j6)));
        }
        if (!Velocity.g(j6, Velocity.Companion.a())) {
            y();
        }
        s();
        return l0.INSTANCE;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    @NotNull
    public Modifier c() {
        return this.effectModifier;
    }

    public AndroidEdgeEffectOverscrollEffect(@NotNull Context context, @NotNull OverscrollConfiguration overscrollConfig) {
        t.j(context, "context");
        t.j(overscrollConfig, "overscrollConfig");
        this.overscrollConfig = overscrollConfig;
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        EdgeEffect edgeEffectA = edgeEffectCompat.a(context, null);
        this.topEffect = edgeEffectA;
        EdgeEffect edgeEffectA2 = edgeEffectCompat.a(context, null);
        this.bottomEffect = edgeEffectA2;
        EdgeEffect edgeEffectA3 = edgeEffectCompat.a(context, null);
        this.leftEffect = edgeEffectA3;
        EdgeEffect edgeEffectA4 = edgeEffectCompat.a(context, null);
        this.rightEffect = edgeEffectA4;
        List<EdgeEffect> listP = v.p(edgeEffectA3, edgeEffectA, edgeEffectA4, edgeEffectA2);
        this.allEffects = listP;
        this.topEffectNegation = edgeEffectCompat.a(context, null);
        this.bottomEffectNegation = edgeEffectCompat.a(context, null);
        this.leftEffectNegation = edgeEffectCompat.a(context, null);
        this.rightEffectNegation = edgeEffectCompat.a(context, null);
        int size = listP.size();
        for (int i10 = 0; i10 < size; i10++) {
            listP.get(i10).setColor(ColorKt.l(this.overscrollConfig.b()));
        }
        this.redrawSignal = SnapshotStateKt.g(l0.INSTANCE, SnapshotStateKt.i());
        this.invalidationEnabled = true;
        this.containerSize = Size.Companion.b();
        this.isEnabledState = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
        AndroidEdgeEffectOverscrollEffect$onNewSize$1 androidEdgeEffectOverscrollEffect$onNewSize$1 = new AndroidEdgeEffectOverscrollEffect$onNewSize$1(this);
        this.onNewSize = androidEdgeEffectOverscrollEffect$onNewSize$1;
        this.effectModifier = OnRemeasuredModifierKt.a(Modifier.Companion.B(AndroidOverscrollKt.StretchOverscrollNonClippingLayer), androidEdgeEffectOverscrollEffect$onNewSize$1).B(new DrawOverscrollModifier(this, InspectableValueKt.c() ? new AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1(this) : InspectableValueKt.a()));
    }

    private final boolean D(long j6) {
        boolean zIsFinished;
        if (this.leftEffect.isFinished() || Offset.m(j6) >= 0.0f) {
            zIsFinished = false;
        } else {
            this.leftEffect.onRelease();
            zIsFinished = this.leftEffect.isFinished();
        }
        if (!this.rightEffect.isFinished() && Offset.m(j6) > 0.0f) {
            this.rightEffect.onRelease();
            zIsFinished = zIsFinished || this.rightEffect.isFinished();
        }
        if (!this.topEffect.isFinished() && Offset.n(j6) < 0.0f) {
            this.topEffect.onRelease();
            zIsFinished = zIsFinished || this.topEffect.isFinished();
        }
        if (this.bottomEffect.isFinished() || Offset.n(j6) <= 0.0f) {
            return zIsFinished;
        }
        this.bottomEffect.onRelease();
        return zIsFinished || this.bottomEffect.isFinished();
    }

    private final boolean E() {
        boolean z6;
        long jB = SizeKt.b(this.containerSize);
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        if (edgeEffectCompat.b(this.leftEffect) == 0.0f) {
            z6 = false;
        } else {
            A(Offset.Companion.c(), jB);
            z6 = true;
        }
        if (edgeEffectCompat.b(this.rightEffect) != 0.0f) {
            B(Offset.Companion.c(), jB);
            z6 = true;
        }
        if (edgeEffectCompat.b(this.topEffect) != 0.0f) {
            C(Offset.Companion.c(), jB);
            z6 = true;
        }
        if (edgeEffectCompat.b(this.bottomEffect) == 0.0f) {
            return z6;
        }
        z(Offset.Companion.c(), jB);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s() {
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        boolean z6 = false;
        for (int i10 = 0; i10 < size; i10++) {
            EdgeEffect edgeEffect = list.get(i10);
            edgeEffect.onRelease();
            z6 = edgeEffect.isFinished() || z6;
        }
        if (z6) {
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        if (this.invalidationEnabled) {
            this.redrawSignal.setValue(l0.INSTANCE);
        }
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean b() {
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!(EdgeEffectCompat.INSTANCE.b(list.get(i10)) == 0.0f)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0020  */
    @Override // androidx.compose.foundation.OverscrollEffect
    public long d(long j6, @Nullable Offset offset, int i10) {
        float fC;
        float fA;
        if (!this.scrollCycleInProgress) {
            E();
            this.scrollCycleInProgress = true;
        }
        long jU = offset != null ? offset.u() : SizeKt.b(this.containerSize);
        float f = 0.0f;
        if (Offset.n(j6) == 0.0f) {
            fC = 0.0f;
        } else {
            EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
            if (edgeEffectCompat.b(this.topEffect) != 0.0f) {
                fC = C(j6, jU);
                if (edgeEffectCompat.b(this.topEffect) == 0.0f) {
                    this.topEffect.onRelease();
                }
            } else if (edgeEffectCompat.b(this.bottomEffect) == 0.0f) {
                fC = 0.0f;
            } else {
                fC = z(j6, jU);
                if (edgeEffectCompat.b(this.bottomEffect) == 0.0f) {
                    this.bottomEffect.onRelease();
                }
            }
        }
        if (Offset.m(j6) != 0.0f) {
            EdgeEffectCompat edgeEffectCompat2 = EdgeEffectCompat.INSTANCE;
            if (edgeEffectCompat2.b(this.leftEffect) != 0.0f) {
                fA = A(j6, jU);
                if (edgeEffectCompat2.b(this.leftEffect) == 0.0f) {
                    this.leftEffect.onRelease();
                }
            } else if (edgeEffectCompat2.b(this.rightEffect) != 0.0f) {
                fA = B(j6, jU);
                if (edgeEffectCompat2.b(this.rightEffect) == 0.0f) {
                    this.rightEffect.onRelease();
                }
            }
            f = fA;
        }
        long jA = OffsetKt.a(f, fC);
        if (!Offset.j(jA, Offset.Companion.c())) {
            y();
        }
        return jA;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public void e(long j6, long j10, @Nullable Offset offset, int i10) {
        boolean z6;
        if (NestedScrollSource.e(i10, NestedScrollSource.Companion.a())) {
            long jU = offset != null ? offset.u() : SizeKt.b(this.containerSize);
            if (Offset.m(j10) > 0.0f) {
                A(j10, jU);
            } else if (Offset.m(j10) < 0.0f) {
                B(j10, jU);
            }
            if (Offset.n(j10) > 0.0f) {
                C(j10, jU);
            } else if (Offset.n(j10) < 0.0f) {
                z(j10, jU);
            }
            z6 = !Offset.j(j10, Offset.Companion.c());
        } else {
            z6 = false;
        }
        if (D(j6) || z6) {
            y();
        }
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isEnabled() {
        return this.isEnabledState.getValue().booleanValue();
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public void setEnabled(boolean z6) {
        boolean z10 = this.isEnabled != z6;
        this.isEnabledState.setValue(Boolean.valueOf(z6));
        this.isEnabled = z6;
        if (z10) {
            this.scrollCycleInProgress = false;
            s();
        }
    }

    public final void v(@NotNull DrawScope drawScope) {
        boolean zU;
        t.j(drawScope, "<this>");
        Canvas canvasA = drawScope.T().a();
        this.redrawSignal.getValue();
        android.graphics.Canvas canvasC = AndroidCanvas_androidKt.c(canvasA);
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        if (edgeEffectCompat.b(this.leftEffectNegation) != 0.0f) {
            w(drawScope, this.leftEffectNegation, canvasC);
            this.leftEffectNegation.finish();
        }
        if (this.leftEffect.isFinished()) {
            zU = false;
        } else {
            zU = u(drawScope, this.leftEffect, canvasC);
            edgeEffectCompat.d(this.leftEffectNegation, edgeEffectCompat.b(this.leftEffect), 0.0f);
        }
        if (edgeEffectCompat.b(this.topEffectNegation) != 0.0f) {
            t(drawScope, this.topEffectNegation, canvasC);
            this.topEffectNegation.finish();
        }
        if (!this.topEffect.isFinished()) {
            zU = x(drawScope, this.topEffect, canvasC) || zU;
            edgeEffectCompat.d(this.topEffectNegation, edgeEffectCompat.b(this.topEffect), 0.0f);
        }
        if (edgeEffectCompat.b(this.rightEffectNegation) != 0.0f) {
            u(drawScope, this.rightEffectNegation, canvasC);
            this.rightEffectNegation.finish();
        }
        if (!this.rightEffect.isFinished()) {
            zU = w(drawScope, this.rightEffect, canvasC) || zU;
            edgeEffectCompat.d(this.rightEffectNegation, edgeEffectCompat.b(this.rightEffect), 0.0f);
        }
        if (edgeEffectCompat.b(this.bottomEffectNegation) != 0.0f) {
            x(drawScope, this.bottomEffectNegation, canvasC);
            this.bottomEffectNegation.finish();
        }
        if (!this.bottomEffect.isFinished()) {
            boolean z6 = t(drawScope, this.bottomEffect, canvasC) || zU;
            edgeEffectCompat.d(this.bottomEffectNegation, edgeEffectCompat.b(this.bottomEffect), 0.0f);
            zU = z6;
        }
        if (zU) {
            y();
        }
    }

    private final float A(long j6, long j10) {
        return EdgeEffectCompat.INSTANCE.d(this.leftEffect, Offset.m(j6) / Size.i(this.containerSize), 1 - (Offset.n(j10) / Size.g(this.containerSize))) * Size.i(this.containerSize);
    }

    private final float B(long j6, long j10) {
        return (-EdgeEffectCompat.INSTANCE.d(this.rightEffect, -(Offset.m(j6) / Size.i(this.containerSize)), Offset.n(j10) / Size.g(this.containerSize))) * Size.i(this.containerSize);
    }

    private final float C(long j6, long j10) {
        float fM = Offset.m(j10) / Size.i(this.containerSize);
        return EdgeEffectCompat.INSTANCE.d(this.topEffect, Offset.n(j6) / Size.g(this.containerSize), fM) * Size.g(this.containerSize);
    }

    private final boolean t(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(180.0f);
        canvas.translate(-Size.i(this.containerSize), (-Size.g(this.containerSize)) + drawScope.H0(this.overscrollConfig.a().a()));
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    private final boolean u(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(270.0f);
        canvas.translate(-Size.g(this.containerSize), drawScope.H0(this.overscrollConfig.a().b(drawScope.getLayoutDirection())));
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    private final boolean w(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int iSave = canvas.save();
        int iC = g8.c.c(Size.i(this.containerSize));
        float fC = this.overscrollConfig.a().c(drawScope.getLayoutDirection());
        canvas.rotate(90.0f);
        canvas.translate(0.0f, (-iC) + drawScope.H0(fC));
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    private final boolean x(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int iSave = canvas.save();
        canvas.translate(0.0f, drawScope.H0(this.overscrollConfig.a().d()));
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    private final float z(long j6, long j10) {
        return (-EdgeEffectCompat.INSTANCE.d(this.bottomEffect, -(Offset.n(j6) / Size.g(this.containerSize)), 1 - (Offset.m(j10) / Size.i(this.containerSize)))) * Size.g(this.containerSize);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0030  */
    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    /* JADX WARN: Code duplicated, block: B:14:0x0050  */
    /* JADX WARN: Code duplicated, block: B:21:0x0078  */
    /* JADX WARN: Code duplicated, block: B:23:0x0080  */
    /* JADX WARN: Code duplicated, block: B:26:0x008d  */
    /* JADX WARN: Code duplicated, block: B:8:0x0028  */
    @Override // androidx.compose.foundation.OverscrollEffect
    @Nullable
    public Object f(long j6, @NotNull d<? super Velocity> dVar) {
        float fH;
        EdgeEffectCompat edgeEffectCompat;
        EdgeEffectCompat edgeEffectCompat2;
        float fI = 0.0f;
        if (Velocity.h(j6) > 0.0f) {
            EdgeEffectCompat edgeEffectCompat3 = EdgeEffectCompat.INSTANCE;
            if (edgeEffectCompat3.b(this.leftEffect) != 0.0f) {
                edgeEffectCompat3.c(this.leftEffect, g8.c.c(Velocity.h(j6)));
                fH = Velocity.h(j6);
            } else if (Velocity.h(j6) < 0.0f) {
                edgeEffectCompat = EdgeEffectCompat.INSTANCE;
                if (edgeEffectCompat.b(this.rightEffect) == 0.0f) {
                    edgeEffectCompat.c(this.rightEffect, -g8.c.c(Velocity.h(j6)));
                    fH = Velocity.h(j6);
                } else {
                    fH = 0.0f;
                }
            } else {
                fH = 0.0f;
            }
        } else if (Velocity.h(j6) < 0.0f) {
            edgeEffectCompat = EdgeEffectCompat.INSTANCE;
            if (edgeEffectCompat.b(this.rightEffect) == 0.0f) {
                edgeEffectCompat.c(this.rightEffect, -g8.c.c(Velocity.h(j6)));
                fH = Velocity.h(j6);
            } else {
                fH = 0.0f;
            }
        } else {
            fH = 0.0f;
        }
        if (Velocity.i(j6) > 0.0f) {
            EdgeEffectCompat edgeEffectCompat4 = EdgeEffectCompat.INSTANCE;
            if (edgeEffectCompat4.b(this.topEffect) != 0.0f) {
                edgeEffectCompat4.c(this.topEffect, g8.c.c(Velocity.i(j6)));
                fI = Velocity.i(j6);
            } else if (Velocity.i(j6) < 0.0f) {
                edgeEffectCompat2 = EdgeEffectCompat.INSTANCE;
                if (edgeEffectCompat2.b(this.bottomEffect) != 0.0f) {
                    edgeEffectCompat2.c(this.bottomEffect, -g8.c.c(Velocity.i(j6)));
                    fI = Velocity.i(j6);
                }
            }
        } else if (Velocity.i(j6) < 0.0f) {
            edgeEffectCompat2 = EdgeEffectCompat.INSTANCE;
            if (edgeEffectCompat2.b(this.bottomEffect) != 0.0f) {
                edgeEffectCompat2.c(this.bottomEffect, -g8.c.c(Velocity.i(j6)));
                fI = Velocity.i(j6);
            }
        }
        long jA = VelocityKt.a(fH, fI);
        if (!Velocity.g(jA, Velocity.Companion.a())) {
            y();
        }
        return Velocity.b(jA);
    }
}
