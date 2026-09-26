package androidx.compose.material;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.selection.SelectableKt;
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
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TabKt$LeadingIconTab$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ a<l0> $onClick;
    final /* synthetic */ Indication $ripple;
    final /* synthetic */ boolean $selected;
    final /* synthetic */ p<Composer, Integer, l0> $text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TabKt$LeadingIconTab$2(Modifier modifier, boolean z6, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z10, a<l0> aVar, p<? super Composer, ? super Integer, l0> pVar, int i10, p<? super Composer, ? super Integer, l0> pVar2) {
        super(2);
        this.$modifier = modifier;
        this.$selected = z6;
        this.$interactionSource = mutableInteractionSource;
        this.$ripple = indication;
        this.$enabled = z10;
        this.$onClick = aVar;
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
        Modifier modifierN = SizeKt.n(PaddingKt.k(SelectableKt.a(SizeKt.o(this.$modifier, TabKt.SmallTabHeight), this.$selected, this.$interactionSource, this.$ripple, this.$enabled, Role.g(Role.Companion.f()), this.$onClick), TabKt.HorizontalTextPadding, 0.0f, 2, null), 0.0f, 1, null);
        Arrangement.HorizontalOrVertical horizontalOrVerticalB = Arrangement.INSTANCE.b();
        Alignment.Vertical verticalI = Alignment.Companion.i();
        p<Composer, Integer, l0> pVar = this.$icon;
        int i11 = this.$$dirty;
        p<Composer, Integer, l0> pVar2 = this.$text;
        composer.G(693286680);
        MeasurePolicy measurePolicyA = RowKt.a(horizontalOrVerticalB, verticalI, composer, 54);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierN);
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
        Updater.e(composerA, measurePolicyA, companion.d());
        Updater.e(composerA, density, companion.b());
        Updater.e(composerA, layoutDirection, companion.c());
        Updater.e(composerA, viewConfiguration, companion.f());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-678309503);
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        composer.G(1002887383);
        pVar.invoke(composer, Integer.valueOf((i11 >> 9) & 14));
        SpacerKt.a(SizeKt.x(Modifier.Companion, TabKt.TextDistanceFromLeadingIcon), composer, 6);
        TextStyle textStyleC = MaterialTheme.INSTANCE.c(composer, 6).c();
        TextKt.a(textStyleC.b((262111 & 1) != 0 ? textStyleC.spanStyle.f() : 0L, (262111 & 2) != 0 ? textStyleC.spanStyle.i() : 0L, (262111 & 4) != 0 ? textStyleC.spanStyle.l() : null, (262111 & 8) != 0 ? textStyleC.spanStyle.j() : null, (262111 & 16) != 0 ? textStyleC.spanStyle.k() : null, (262111 & 32) != 0 ? textStyleC.spanStyle.g() : null, (262111 & 64) != 0 ? textStyleC.spanStyle.h() : null, (262111 & 128) != 0 ? textStyleC.spanStyle.m() : 0L, (262111 & 256) != 0 ? textStyleC.spanStyle.d() : null, (262111 & 512) != 0 ? textStyleC.spanStyle.s() : null, (262111 & 1024) != 0 ? textStyleC.spanStyle.n() : null, (262111 & 2048) != 0 ? textStyleC.spanStyle.c() : 0L, (262111 & 4096) != 0 ? textStyleC.spanStyle.q() : null, (262111 & 8192) != 0 ? textStyleC.spanStyle.p() : null, (262111 & 16384) != 0 ? textStyleC.paragraphStyle.f() : TextAlign.g(TextAlign.Companion.a()), (262111 & 32768) != 0 ? textStyleC.paragraphStyle.g() : null, (262111 & 65536) != 0 ? textStyleC.paragraphStyle.c() : 0L, (262111 & 131072) != 0 ? textStyleC.paragraphStyle.h() : null), pVar2, composer, (i11 >> 3) & 112);
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
