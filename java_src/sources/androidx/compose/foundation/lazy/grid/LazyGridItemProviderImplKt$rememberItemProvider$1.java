package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import e8.a;
import e8.p;
import j8.i;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.compose.foundation.lazy.grid.LazyGridItemProviderImplKt$rememberItemProvider$1", f = "LazyGridItemProviderImpl.kt", l = {53}, m = "invokeSuspend")
final class LazyGridItemProviderImplKt$rememberItemProvider$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ MutableState<i> $nearestItemsRangeState;
    final /* synthetic */ LazyGridState $state;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridItemProviderImplKt$rememberItemProvider$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements a<i> {
        final /* synthetic */ LazyGridState $state;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LazyGridState lazyGridState) {
            super(0);
            this.$state = lazyGridState;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final i invoke() {
            return LazyGridItemProviderImplKt.b(this.$state.j());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridItemProviderImplKt$rememberItemProvider$1(LazyGridState lazyGridState, MutableState<i> mutableState, d<? super LazyGridItemProviderImplKt$rememberItemProvider$1> dVar) {
        super(2, dVar);
        this.$state = lazyGridState;
        this.$nearestItemsRangeState = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new LazyGridItemProviderImplKt$rememberItemProvider$1(this.$state, this.$nearestItemsRangeState, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((LazyGridItemProviderImplKt$rememberItemProvider$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            g gVarO = SnapshotStateKt.o(new AnonymousClass1(this.$state));
            final MutableState<i> mutableState = this.$nearestItemsRangeState;
            h<i> hVar = new h<i>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemProviderImplKt$rememberItemProvider$1.2
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public final Object emit(@NotNull i iVar, @NotNull d<? super l0> dVar) {
                    mutableState.setValue(iVar);
                    return l0.INSTANCE;
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
