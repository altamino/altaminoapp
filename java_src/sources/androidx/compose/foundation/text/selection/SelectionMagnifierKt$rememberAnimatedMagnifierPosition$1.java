package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
@f(c = "androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1", f = "SelectionMagnifier.kt", l = {88}, m = "invokeSuspend")
final class SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ Animatable<Offset, AnimationVector2D> $animatable;
    final /* synthetic */ State<Offset> $targetValue$delegate;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<Offset> {
        final /* synthetic */ State<Offset> $targetValue$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(State<Offset> state) {
            super(0);
            this.$targetValue$delegate = state;
        }

        public final long b() {
            return SelectionMagnifierKt.g(this.$targetValue$delegate);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ Offset invoke() {
            return Offset.d(b());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1(State<Offset> state, Animatable<Offset, AnimationVector2D> animatable, d<? super SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1> dVar) {
        super(2, dVar);
        this.$targetValue$delegate = state;
        this.$animatable = animatable;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1 selectionMagnifierKt$rememberAnimatedMagnifierPosition$1 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1(this.$targetValue$delegate, this.$animatable, dVar);
        selectionMagnifierKt$rememberAnimatedMagnifierPosition$1.L$0 = obj;
        return selectionMagnifierKt$rememberAnimatedMagnifierPosition$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            final o0 o0Var = (o0) this.L$0;
            g gVarO = SnapshotStateKt.o(new AnonymousClass1(this.$targetValue$delegate));
            final Animatable<Offset, AnimationVector2D> animatable = this.$animatable;
            h<Offset> hVar = new h<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1.2
                @Nullable
                public final Object e(long j6, @NotNull d<? super l0> dVar) {
                    if (OffsetKt.c(animatable.n().u()) && OffsetKt.c(j6) && Offset.n(animatable.n().u()) != Offset.n(j6)) {
                        b2 b2VarD = k.d(o0Var, null, null, new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2(animatable, j6, null), 3, null);
                        return b2VarD == kotlin.coroutines.intrinsics.d.e() ? b2VarD : l0.INSTANCE;
                    }
                    Object objU = animatable.u(Offset.d(j6), dVar);
                    return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
                }

                @Override // kotlinx.coroutines.flow.h
                public /* bridge */ /* synthetic */ Object emit(Offset offset, d dVar) {
                    return e(offset.u(), dVar);
                }
            };
            this.label = 1;
            if (gVarO.collect(hVar, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
