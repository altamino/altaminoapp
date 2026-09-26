package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SnackbarHostKt$FadeInFadeOutWithScale$1$1 extends v implements q<p<? super Composer, ? super Integer, ? extends l0>, Composer, Integer, l0> {
    final /* synthetic */ SnackbarData $current;
    final /* synthetic */ SnackbarData $key;
    final /* synthetic */ List<SnackbarData> $keys;
    final /* synthetic */ FadeInFadeOutState<SnackbarData> $state;

    /* JADX INFO: renamed from: androidx.compose.material.SnackbarHostKt$FadeInFadeOutWithScale$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<SemanticsPropertyReceiver, l0> {
        final /* synthetic */ SnackbarData $key;

        /* JADX INFO: renamed from: androidx.compose.material.SnackbarHostKt$FadeInFadeOutWithScale$1$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00701 extends v implements a<Boolean> {
            final /* synthetic */ SnackbarData $key;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00701(SnackbarData snackbarData) {
                super(0);
                this.$key = snackbarData;
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke() {
                this.$key.dismiss();
                return Boolean.TRUE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SnackbarData snackbarData) {
            super(1);
            this.$key = snackbarData;
        }

        public final void a(@NotNull SemanticsPropertyReceiver semantics) {
            t.j(semantics, "$this$semantics");
            SemanticsPropertiesKt.L(semantics, LiveRegionMode.Companion.b());
            SemanticsPropertiesKt.j(semantics, null, new C00701(this.$key), 1, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            a(semanticsPropertyReceiver);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnackbarHostKt$FadeInFadeOutWithScale$1$1(SnackbarData snackbarData, SnackbarData snackbarData2, List<SnackbarData> list, FadeInFadeOutState<SnackbarData> fadeInFadeOutState) {
        super(3);
        this.$key = snackbarData;
        this.$current = snackbarData2;
        this.$keys = list;
        this.$state = fadeInFadeOutState;
    }

    @Composable
    @ComposableInferredTarget
    public final void a(@NotNull p<? super Composer, ? super Integer, l0> children, @Nullable Composer composer, int i10) {
        int i11;
        t.j(children, "children");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(children) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        boolean zE = t.e(this.$key, this.$current);
        int i12 = zE ? 150 : 75;
        int i13 = (!zE || d0.g0(this.$keys).size() == 1) ? 0 : 75;
        State stateF = SnackbarHostKt.f(AnimationSpecKt.j(i12, i13, EasingKt.b()), zE, new SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1(this.$key, this.$state), composer, 0, 0);
        State stateG = SnackbarHostKt.g(AnimationSpecKt.j(i12, i13, EasingKt.a()), zE, composer, 0);
        Modifier modifierC = SemanticsModifierKt.c(GraphicsLayerModifierKt.c(Modifier.Companion, ((Number) stateG.getValue()).floatValue(), ((Number) stateG.getValue()).floatValue(), ((Number) stateF.getValue()).floatValue(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65528, null), false, new AnonymousClass1(this.$key), 1, null);
        composer.G(733328855);
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composer, 0);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierC);
        if (!(composer.t() instanceof Applier)) {
            ComposablesKt.c();
        }
        composer.e();
        if (composer.r()) {
            composer.w(aVarA);
        } else {
            composer.c();
        }
        composer.L();
        Composer composerA = Updater.a(composer);
        Updater.e(composerA, measurePolicyH, companion.d());
        Updater.e(composerA, density, companion.b());
        Updater.e(composerA, layoutDirection, companion.c());
        Updater.e(composerA, viewConfiguration, companion.f());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composer.G(-421978688);
        children.invoke(composer, Integer.valueOf(i11 & 14));
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(p<? super Composer, ? super Integer, ? extends l0> pVar, Composer composer, Integer num) {
        a(pVar, composer, num.intValue());
        return l0.INSTANCE;
    }
}
