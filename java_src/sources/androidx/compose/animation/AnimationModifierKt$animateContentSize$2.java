package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.unit.IntSize;
import e8.p;
import e8.q;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class AnimationModifierKt$animateContentSize$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ FiniteAnimationSpec<IntSize> $animationSpec;
    final /* synthetic */ p<IntSize, IntSize, l0> $finishedListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimationModifierKt$animateContentSize$2(p<? super IntSize, ? super IntSize, l0> pVar, FiniteAnimationSpec<IntSize> finiteAnimationSpec) {
        super(3);
        this.$finishedListener = pVar;
        this.$animationSpec = finiteAnimationSpec;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-843180607);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        FiniteAnimationSpec<IntSize> finiteAnimationSpec = this.$animationSpec;
        composer.G(1157296644);
        boolean zK = composer.k(o0VarA);
        Object objH2 = composer.H();
        if (zK || objH2 == companion.a()) {
            objH2 = new SizeAnimationModifier(finiteAnimationSpec, o0VarA);
            composer.z(objH2);
        }
        composer.Q();
        SizeAnimationModifier sizeAnimationModifier = (SizeAnimationModifier) objH2;
        sizeAnimationModifier.d(this.$finishedListener);
        Modifier modifierB = ClipKt.b(composed).B(sizeAnimationModifier);
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
