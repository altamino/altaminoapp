package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SurfaceKt$Surface$13 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ float $absoluteElevation;
    final /* synthetic */ BorderStroke $border;
    final /* synthetic */ long $color;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ float $elevation;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ Indication $indication;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ a<l0> $onClick;
    final /* synthetic */ String $onClickLabel;
    final /* synthetic */ Role $role;
    final /* synthetic */ Shape $shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SurfaceKt$Surface$13(Modifier modifier, Shape shape, long j6, float f, int i10, BorderStroke borderStroke, float f6, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z6, String str, Role role, a<l0> aVar, p<? super Composer, ? super Integer, l0> pVar, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$shape = shape;
        this.$color = j6;
        this.$absoluteElevation = f;
        this.$$dirty = i10;
        this.$border = borderStroke;
        this.$elevation = f6;
        this.$interactionSource = mutableInteractionSource;
        this.$indication = indication;
        this.$enabled = z6;
        this.$onClickLabel = str;
        this.$role = role;
        this.$onClick = aVar;
        this.$content = pVar;
        this.$$dirty1 = i11;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        Modifier modifierB = SurfaceKt.h(TouchTargetKt.b(this.$modifier), this.$shape, SurfaceKt.i(this.$color, (ElevationOverlay) composer.x(ElevationOverlayKt.d()), this.$absoluteElevation, composer, (this.$$dirty >> 9) & 14), this.$border, this.$elevation).B(ClickableKt.b(Modifier.Companion, this.$interactionSource, this.$indication, this.$enabled, this.$onClickLabel, this.$role, this.$onClick));
        p<Composer, Integer, l0> pVar = this.$content;
        int i11 = this.$$dirty1;
        composer.G(733328855);
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), true, composer, 48);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
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
        composer.G(-1300719946);
        pVar.invoke(composer, Integer.valueOf((i11 >> 6) & 14));
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
