package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class FloatingActionButtonKt$ExtendedFloatingActionButton$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ p<Composer, Integer, l0> $text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FloatingActionButtonKt$ExtendedFloatingActionButton$2(p<? super Composer, ? super Integer, l0> pVar, int i10, p<? super Composer, ? super Integer, l0> pVar2) {
        super(2);
        this.$icon = pVar;
        this.$$dirty = i10;
        this.$text = pVar2;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        float f = this.$icon == null ? FloatingActionButtonKt.ExtendedFabTextPadding : FloatingActionButtonKt.ExtendedFabIconPadding;
        Modifier.Companion companion = Modifier.Companion;
        Modifier modifierM = PaddingKt.m(companion, f, 0.0f, FloatingActionButtonKt.ExtendedFabTextPadding, 0.0f, 10, null);
        Alignment.Vertical verticalI = Alignment.Companion.i();
        p<Composer, Integer, l0> pVar = this.$icon;
        int i11 = this.$$dirty;
        p<Composer, Integer, l0> pVar2 = this.$text;
        composer.G(693286680);
        MeasurePolicy measurePolicyA = RowKt.a(Arrangement.INSTANCE.e(), verticalI, composer, 48);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion2.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierM);
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
        Updater.e(composerA, measurePolicyA, companion2.d());
        Updater.e(composerA, density, companion2.b());
        Updater.e(composerA, layoutDirection, companion2.c());
        Updater.e(composerA, viewConfiguration, companion2.f());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-678309503);
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        composer.G(-388203689);
        composer.G(-1435223762);
        if (pVar != null) {
            pVar.invoke(composer, Integer.valueOf((i11 >> 9) & 14));
            SpacerKt.a(SizeKt.D(companion, FloatingActionButtonKt.ExtendedFabIconPadding), composer, 6);
        }
        composer.Q();
        pVar2.invoke(composer, Integer.valueOf(i11 & 14));
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
