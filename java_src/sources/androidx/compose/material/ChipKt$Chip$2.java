package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
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
final class ChipKt$Chip$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ ChipColors $colors;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
    final /* synthetic */ State<Color> $contentColor$delegate;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;

    /* JADX INFO: renamed from: androidx.compose.material.ChipKt$Chip$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ ChipColors $colors;
        final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;

        /* JADX INFO: renamed from: androidx.compose.material.ChipKt$Chip$2$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00551 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ ChipColors $colors;
            final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
            final /* synthetic */ boolean $enabled;
            final /* synthetic */ p<Composer, Integer, l0> $leadingIcon;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00551(p<? super Composer, ? super Integer, l0> pVar, ChipColors chipColors, boolean z6, int i10, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar) {
                super(2);
                this.$leadingIcon = pVar;
                this.$colors = chipColors;
                this.$enabled = z6;
                this.$$dirty = i10;
                this.$content = qVar;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                Modifier.Companion companion = Modifier.Companion;
                Modifier modifierM = PaddingKt.m(SizeKt.h(companion, 0.0f, ChipDefaults.INSTANCE.c(), 1, null), this.$leadingIcon == null ? ChipKt.HorizontalPadding : Dp.f(0), 0.0f, ChipKt.HorizontalPadding, 0.0f, 10, null);
                Arrangement.Horizontal horizontalE = Arrangement.INSTANCE.e();
                Alignment.Vertical verticalI = Alignment.Companion.i();
                p<Composer, Integer, l0> pVar = this.$leadingIcon;
                ChipColors chipColors = this.$colors;
                boolean z6 = this.$enabled;
                int i11 = this.$$dirty;
                q<RowScope, Composer, Integer, l0> qVar = this.$content;
                composer.G(693286680);
                MeasurePolicy measurePolicyA = RowKt.a(horizontalE, verticalI, composer, 54);
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
                composer.G(951468004);
                composer.G(2084788874);
                if (pVar != null) {
                    SpacerKt.a(SizeKt.D(companion, ChipKt.LeadingIconStartSpacing), composer, 6);
                    State<Color> stateC = chipColors.c(z6, composer, ((i11 >> 6) & 14) | ((i11 >> 15) & 112));
                    CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(b(stateC))), ContentAlphaKt.a().c(Float.valueOf(Color.o(b(stateC))))}, pVar, composer, ((i11 >> 18) & 112) | 8);
                    SpacerKt.a(SizeKt.D(companion, ChipKt.LeadingIconEndSpacing), composer, 6);
                }
                composer.Q();
                qVar.invoke(rowScopeInstance, composer, Integer.valueOf(((i11 >> 21) & 112) | 6));
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

            private static final long b(State<Color> state) {
                return state.getValue().v();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(p<? super Composer, ? super Integer, l0> pVar, ChipColors chipColors, boolean z6, int i10, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar) {
            super(2);
            this.$leadingIcon = pVar;
            this.$colors = chipColors;
            this.$enabled = z6;
            this.$$dirty = i10;
            this.$content = qVar;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                TextKt.a(MaterialTheme.INSTANCE.c(composer, 6).b(), ComposableLambdaKt.b(composer, -1131213696, true, new C00551(this.$leadingIcon, this.$colors, this.$enabled, this.$$dirty, this.$content)), composer, 48);
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
    ChipKt$Chip$2(State<Color> state, p<? super Composer, ? super Integer, l0> pVar, ChipColors chipColors, boolean z6, int i10, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar) {
        super(2);
        this.$contentColor$delegate = state;
        this.$leadingIcon = pVar;
        this.$colors = chipColors;
        this.$enabled = z6;
        this.$$dirty = i10;
        this.$content = qVar;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(Color.o(ChipKt.b(this.$contentColor$delegate))))}, ComposableLambdaKt.b(composer, 667535631, true, new AnonymousClass1(this.$leadingIcon, this.$colors, this.$enabled, this.$$dirty, this.$content)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
