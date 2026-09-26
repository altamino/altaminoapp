package androidx.compose.material;

import androidx.compose.runtime.RecomposeScope;
import e8.a;
import e8.l;
import kotlin.collections.a0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1 extends v implements a<l0> {
    final /* synthetic */ SnackbarData $key;
    final /* synthetic */ FadeInFadeOutState<SnackbarData> $state;

    /* JADX INFO: renamed from: androidx.compose.material.SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<FadeInFadeOutAnimationItem<SnackbarData>, Boolean> {
        final /* synthetic */ SnackbarData $key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SnackbarData snackbarData) {
            super(1);
            this.$key = snackbarData;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull FadeInFadeOutAnimationItem<SnackbarData> it) {
            t.j(it, "it");
            return Boolean.valueOf(t.e(it.c(), this.$key));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1(SnackbarData snackbarData, FadeInFadeOutState<SnackbarData> fadeInFadeOutState) {
        super(0);
        this.$key = snackbarData;
        this.$state = fadeInFadeOutState;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (t.e(this.$key, this.$state.a())) {
            return;
        }
        a0.J(this.$state.b(), new AnonymousClass1(this.$key));
        RecomposeScope recomposeScopeC = this.$state.c();
        if (recomposeScopeC != null) {
            recomposeScopeC.invalidate();
        }
    }
}
