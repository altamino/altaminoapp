package coil.compose;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.flow.n0;
import kotlinx.coroutines.flow.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements coil.size.j, LayoutModifier {

    @NotNull
    private final x<Constraints> _constraints = n0.a(Constraints.b(j.c()));

    static final class a extends v implements l<Placeable.PlacementScope, l0> {
        final /* synthetic */ Placeable $placeable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Placeable placeable) {
            super(1);
            this.$placeable = placeable;
        }

        public final void a(@NotNull Placeable.PlacementScope placementScope) {
            Placeable.PlacementScope.j(placementScope, this.$placeable, 0, 0, 0.0f, 4, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
            a(placementScope);
            return l0.INSTANCE;
        }
    }

    public static final class b implements kotlinx.coroutines.flow.g<coil.size.i> {
        final /* synthetic */ kotlinx.coroutines.flow.g $this_unsafeTransform$inlined;

        public static final class a<T> implements kotlinx.coroutines.flow.h {
            final /* synthetic */ kotlinx.coroutines.flow.h $this_unsafeFlow;

            /* JADX INFO: renamed from: coil.compose.d$b$a$a, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2", f = "AsyncImage.kt", l = {225}, m = "emit")
            public static final class C0096a extends kotlin.coroutines.jvm.internal.d {
                Object L$0;
                int label;
                /* synthetic */ Object result;

                public C0096a(kotlin.coroutines.d dVar) {
                    super(dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.result = obj;
                    this.label |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kotlinx.coroutines.flow.h hVar) {
                this.$this_unsafeFlow = hVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.h
            @Nullable
            public final Object emit(Object obj, @NotNull kotlin.coroutines.d dVar) {
                C0096a c0096a;
                if (dVar instanceof C0096a) {
                    c0096a = (C0096a) dVar;
                    int i10 = c0096a.label;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        c0096a.label = i10 - Integer.MIN_VALUE;
                    } else {
                        c0096a = new C0096a(dVar);
                    }
                } else {
                    c0096a = new C0096a(dVar);
                }
                Object obj2 = c0096a.result;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i11 = c0096a.label;
                if (i11 == 0) {
                    w.b(obj2);
                    kotlinx.coroutines.flow.h hVar = this.$this_unsafeFlow;
                    coil.size.i iVarE = coil.compose.a.e(((Constraints) obj).t());
                    if (iVarE != null) {
                        c0096a.label = 1;
                        if (hVar.emit(iVarE, c0096a) == objE) {
                            return objE;
                        }
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.b(obj2);
                }
                return l0.INSTANCE;
            }
        }

        public b(kotlinx.coroutines.flow.g gVar) {
            this.$this_unsafeTransform$inlined = gVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull kotlinx.coroutines.flow.h<? super coil.size.i> hVar, @NotNull kotlin.coroutines.d dVar) {
            Object objCollect = this.$this_unsafeTransform$inlined.collect(new a(hVar), dVar);
            return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
        }
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int S(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.b(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int c0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.a(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measureScope, @NotNull Measurable measurable, long j6) {
        this._constraints.setValue(Constraints.b(j6));
        Placeable placeableB0 = measurable.b0(j6);
        return MeasureScope.CC.b(measureScope, placeableB0.Q0(), placeableB0.B0(), null, new a(placeableB0), 4, null);
    }

    @Override // coil.size.j
    @Nullable
    public Object b(@NotNull kotlin.coroutines.d<? super coil.size.i> dVar) {
        return kotlinx.coroutines.flow.i.v(new b(this._constraints), dVar);
    }
}
