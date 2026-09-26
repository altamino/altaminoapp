package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
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
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class CrossfadeKt$Crossfade$4$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
    final /* synthetic */ q<T, Composer, Integer, l0> $content;
    final /* synthetic */ T $stateForContent;
    final /* synthetic */ Transition<T> $this_Crossfade;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CrossfadeKt$Crossfade$4$1(Transition<T> transition, int i10, FiniteAnimationSpec<Float> finiteAnimationSpec, T t5, q<? super T, ? super Composer, ? super Integer, l0> qVar) {
        super(2);
        this.$this_Crossfade = transition;
        this.$$dirty = i10;
        this.$animationSpec = finiteAnimationSpec;
        this.$stateForContent = t5;
        this.$content = qVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Composable
    public final void b(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        Transition<T> transition = this.$this_Crossfade;
        CrossfadeKt$Crossfade$4$1$alpha$2 crossfadeKt$Crossfade$4$1$alpha$2 = new CrossfadeKt$Crossfade$4$1$alpha$2(this.$animationSpec);
        T t5 = this.$stateForContent;
        int i11 = this.$$dirty;
        composer.G(-1338768149);
        TwoWayConverter<Float, AnimationVector1D> twoWayConverterI = VectorConvertersKt.i(m.INSTANCE);
        int i12 = (i11 & 14) << 3;
        int i13 = (i11 & 14) | (i12 & 896) | (i12 & 7168) | (i12 & 57344);
        composer.G(-142660079);
        Object objG = transition.g();
        composer.G(-438678252);
        float f = t.e(objG, t5) ? 1.0f : 0.0f;
        composer.Q();
        Float fValueOf = Float.valueOf(f);
        Object objM = transition.m();
        composer.G(-438678252);
        float f6 = t.e(objM, t5) ? 1.0f : 0.0f;
        composer.Q();
        State stateC = androidx.compose.animation.core.TransitionKt.c(transition, fValueOf, Float.valueOf(f6), crossfadeKt$Crossfade$4$1$alpha$2.invoke(transition.k(), composer, Integer.valueOf((i13 >> 3) & 112)), twoWayConverterI, "FloatAnimation", composer, (i13 & 14) | (57344 & (i13 << 9)) | ((i13 << 6) & 458752));
        composer.Q();
        composer.Q();
        Modifier.Companion companion = Modifier.Companion;
        composer.G(1157296644);
        boolean zK = composer.k(stateC);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new CrossfadeKt$Crossfade$4$1$1$1(stateC);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierA = GraphicsLayerModifierKt.a(companion, (l) objH);
        q<T, Composer, Integer, l0> qVar = this.$content;
        T t10 = this.$stateForContent;
        int i14 = this.$$dirty;
        composer.G(-1990474327);
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composer, 0);
        composer.G(1376089335);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion2.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA);
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
        Updater.e(composerA, measurePolicyH, companion2.d());
        Updater.e(composerA, density, companion2.b());
        Updater.e(composerA, layoutDirection, companion2.c());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-1253629305);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composer.G(-222715758);
        qVar.invoke(t10, composer, Integer.valueOf((i14 >> 9) & 112));
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        b(composer, num.intValue());
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(State<Float> state) {
        return state.getValue().floatValue();
    }
}
