package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class ChipKt$FilterChip$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ SelectableChipColors $colors;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
    final /* synthetic */ State<Color> $contentColor;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
    final /* synthetic */ boolean $selected;
    final /* synthetic */ p<Composer, Integer, l0> $selectedIcon;
    final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;

    /* JADX INFO: renamed from: androidx.compose.material.ChipKt$FilterChip$3$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ int $$dirty1;
        final /* synthetic */ SelectableChipColors $colors;
        final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
        final /* synthetic */ State<Color> $contentColor;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
        final /* synthetic */ boolean $selected;
        final /* synthetic */ p<Composer, Integer, l0> $selectedIcon;
        final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;

        /* JADX INFO: renamed from: androidx.compose.material.ChipKt$FilterChip$3$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00561 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ int $$dirty1;
            final /* synthetic */ SelectableChipColors $colors;
            final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
            final /* synthetic */ State<Color> $contentColor;
            final /* synthetic */ boolean $enabled;
            final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;
            final /* synthetic */ boolean $selected;
            final /* synthetic */ p<Composer, Integer, l0> $selectedIcon;
            final /* synthetic */ p<Composer, Integer, l0> $trailingIcon;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00561(p<? super Composer, ? super Integer, l0> pVar, boolean z6, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10, SelectableChipColors selectableChipColors, boolean z10, int i11, State<Color> state) {
                super(2);
                this.$leadingIcon = pVar;
                this.$selected = z6;
                this.$selectedIcon = pVar2;
                this.$trailingIcon = pVar3;
                this.$content = qVar;
                this.$$dirty1 = i10;
                this.$colors = selectableChipColors;
                this.$enabled = z10;
                this.$$dirty = i11;
                this.$contentColor = state;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                int i11;
                Modifier modifierA;
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                Modifier.Companion companion = Modifier.Companion;
                Modifier modifierM = PaddingKt.m(SizeKt.h(companion, 0.0f, ChipDefaults.INSTANCE.c(), 1, null), (this.$leadingIcon != null || (this.$selected && this.$selectedIcon != null)) ? Dp.f(0) : ChipKt.HorizontalPadding, 0.0f, this.$trailingIcon == null ? ChipKt.HorizontalPadding : Dp.f(0), 0.0f, 10, null);
                Arrangement.Horizontal horizontalE = Arrangement.INSTANCE.e();
                Alignment.Companion companion2 = Alignment.Companion;
                Alignment.Vertical verticalI = companion2.i();
                p<Composer, Integer, l0> pVar = this.$leadingIcon;
                boolean z6 = this.$selected;
                p<Composer, Integer, l0> pVar2 = this.$selectedIcon;
                q<RowScope, Composer, Integer, l0> qVar = this.$content;
                int i12 = this.$$dirty1;
                p<Composer, Integer, l0> pVar3 = this.$trailingIcon;
                SelectableChipColors selectableChipColors = this.$colors;
                boolean z10 = this.$enabled;
                int i13 = this.$$dirty;
                State<Color> state = this.$contentColor;
                composer.G(693286680);
                MeasurePolicy measurePolicyA = RowKt.a(horizontalE, verticalI, composer, 54);
                composer.G(-1323940314);
                Density density = (Density) composer.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                a<ComposeUiNode> aVarA = companion3.a();
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
                Updater.e(composerA, measurePolicyA, companion3.d());
                Updater.e(composerA, density, companion3.b());
                Updater.e(composerA, layoutDirection, companion3.c());
                Updater.e(composerA, viewConfiguration, companion3.f());
                composer.o();
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
                composer.G(2058660585);
                composer.G(-678309503);
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                composer.G(1218705642);
                composer.G(-1943412137);
                if (pVar != null || (z6 && pVar2 != null)) {
                    SpacerKt.a(SizeKt.D(companion, ChipKt.LeadingIconStartSpacing), composer, 6);
                    composer.G(733328855);
                    MeasurePolicy measurePolicyH = BoxKt.h(companion2.o(), false, composer, 0);
                    composer.G(-1323940314);
                    Density density2 = (Density) composer.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection2 = (LayoutDirection) composer.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
                    a<ComposeUiNode> aVarA2 = companion3.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(companion);
                    if (!(composer.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composer.e();
                    if (composer.r()) {
                        composer.w(aVarA2);
                    } else {
                        composer.c();
                    }
                    composer.L();
                    Composer composerA2 = Updater.a(composer);
                    Updater.e(composerA2, measurePolicyH, companion3.d());
                    Updater.e(composerA2, density2, companion3.b());
                    Updater.e(composerA2, layoutDirection2, companion3.c());
                    Updater.e(composerA2, viewConfiguration2, companion3.f());
                    composer.o();
                    qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
                    composer.G(2058660585);
                    composer.G(-2137368960);
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    composer.G(-626917591);
                    composer.G(649985595);
                    if (pVar != null) {
                        State<Color> stateB = selectableChipColors.b(z10, z6, composer, ((i13 >> 9) & 14) | ((i13 << 3) & 112) | ((i13 >> 15) & 896));
                        CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(stateB.getValue()), ContentAlphaKt.a().c(Float.valueOf(Color.o(stateB.getValue().v())))}, pVar, composer, ((i13 >> 21) & 112) | 8);
                    }
                    composer.Q();
                    composer.G(-1943411323);
                    if (z6 && pVar2 != null) {
                        long jV = state.getValue().v();
                        composer.G(649986426);
                        if (pVar != null) {
                            modifierA = ClipKt.a(BackgroundKt.a(SizeKt.t(companion, ChipKt.SelectedIconContainerSize), state.getValue().v(), RoundedCornerShapeKt.d()), RoundedCornerShapeKt.d());
                            jV = selectableChipColors.d(z10, z6, composer, ((i13 >> 9) & 14) | ((i13 << 3) & 112) | ((i13 >> 15) & 896)).getValue().v();
                        } else {
                            modifierA = companion;
                        }
                        composer.Q();
                        Alignment alignmentE = companion2.e();
                        composer.G(733328855);
                        MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentE, false, composer, 6);
                        composer.G(-1323940314);
                        Density density3 = (Density) composer.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection3 = (LayoutDirection) composer.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration3 = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
                        a<ComposeUiNode> aVarA3 = companion3.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierA);
                        if (!(composer.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composer.e();
                        if (composer.r()) {
                            composer.w(aVarA3);
                        } else {
                            composer.c();
                        }
                        composer.L();
                        Composer composerA3 = Updater.a(composer);
                        Updater.e(composerA3, measurePolicyH2, companion3.d());
                        Updater.e(composerA3, density3, companion3.b());
                        Updater.e(composerA3, layoutDirection3, companion3.c());
                        Updater.e(composerA3, viewConfiguration3, companion3.f());
                        composer.o();
                        qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
                        composer.G(2058660585);
                        composer.G(-2137368960);
                        composer.G(-370889391);
                        CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(jV))}, pVar2, composer, ((i13 >> 24) & 112) | 8);
                        composer.Q();
                        composer.Q();
                        composer.Q();
                        composer.d();
                        composer.Q();
                        composer.Q();
                    }
                    composer.Q();
                    composer.Q();
                    composer.Q();
                    composer.Q();
                    composer.d();
                    composer.Q();
                    composer.Q();
                    i11 = 6;
                    SpacerKt.a(SizeKt.D(companion, ChipKt.LeadingIconEndSpacing), composer, 6);
                } else {
                    i11 = 6;
                }
                composer.Q();
                qVar.invoke(rowScopeInstance, composer, Integer.valueOf((i12 & 112) | i11));
                if (pVar3 != null) {
                    SpacerKt.a(SizeKt.D(companion, ChipKt.TrailingIconSpacing), composer, i11);
                    pVar3.invoke(composer, Integer.valueOf(i12 & 14));
                    SpacerKt.a(SizeKt.D(companion, ChipKt.TrailingIconSpacing), composer, i11);
                }
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(p<? super Composer, ? super Integer, l0> pVar, boolean z6, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10, SelectableChipColors selectableChipColors, boolean z10, int i11, State<Color> state) {
            super(2);
            this.$leadingIcon = pVar;
            this.$selected = z6;
            this.$selectedIcon = pVar2;
            this.$trailingIcon = pVar3;
            this.$content = qVar;
            this.$$dirty1 = i10;
            this.$colors = selectableChipColors;
            this.$enabled = z10;
            this.$$dirty = i11;
            this.$contentColor = state;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                TextKt.a(MaterialTheme.INSTANCE.c(composer, 6).b(), ComposableLambdaKt.b(composer, -1543702066, true, new C00561(this.$leadingIcon, this.$selected, this.$selectedIcon, this.$trailingIcon, this.$content, this.$$dirty1, this.$colors, this.$enabled, this.$$dirty, this.$contentColor)), composer, 48);
            }
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ChipKt$FilterChip$3(State<Color> state, p<? super Composer, ? super Integer, l0> pVar, boolean z6, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10, SelectableChipColors selectableChipColors, boolean z10, int i11) {
        super(2);
        this.$contentColor = state;
        this.$leadingIcon = pVar;
        this.$selected = z6;
        this.$selectedIcon = pVar2;
        this.$trailingIcon = pVar3;
        this.$content = qVar;
        this.$$dirty1 = i10;
        this.$colors = selectableChipColors;
        this.$enabled = z10;
        this.$$dirty = i11;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(Color.o(this.$contentColor.getValue().v())))}, ComposableLambdaKt.b(composer, 1582291359, true, new AnonymousClass1(this.$leadingIcon, this.$selected, this.$selectedIcon, this.$trailingIcon, this.$content, this.$$dirty1, this.$colors, this.$enabled, this.$$dirty, this.$contentColor)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
