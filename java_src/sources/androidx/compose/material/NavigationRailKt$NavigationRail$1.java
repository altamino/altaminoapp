package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
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

/* JADX INFO: loaded from: classes6.dex */
final class NavigationRailKt$NavigationRail$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $content;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $header;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    NavigationRailKt$NavigationRail$1(q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, int i10, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar2) {
        super(2);
        this.$header = qVar;
        this.$$dirty = i10;
        this.$content = qVar2;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        Modifier.Companion companion = Modifier.Companion;
        Modifier modifierA = SelectableGroupKt.a(PaddingKt.k(SizeKt.j(companion, 0.0f, 1, null), 0.0f, NavigationRailKt.NavigationRailPadding, 1, null));
        Alignment.Horizontal horizontalG = Alignment.Companion.g();
        q<ColumnScope, Composer, Integer, l0> qVar = this.$header;
        int i11 = this.$$dirty;
        q<ColumnScope, Composer, Integer, l0> qVar2 = this.$content;
        composer.G(-483455358);
        MeasurePolicy measurePolicyA = ColumnKt.a(Arrangement.INSTANCE.f(), horizontalG, composer, 48);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
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
        Updater.e(composerA, measurePolicyA, companion2.d());
        Updater.e(composerA, density, companion2.b());
        Updater.e(composerA, layoutDirection, companion2.c());
        Updater.e(composerA, viewConfiguration, companion2.f());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-1163856341);
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        composer.G(-497173955);
        composer.G(65525382);
        if (qVar != null) {
            qVar.invoke(columnScopeInstance, composer, Integer.valueOf(((i11 >> 9) & 112) | 6));
            SpacerKt.a(SizeKt.o(companion, NavigationRailKt.HeaderPadding), composer, 6);
        }
        composer.Q();
        qVar2.invoke(columnScopeInstance, composer, Integer.valueOf(((i11 >> 12) & 112) | 6));
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
