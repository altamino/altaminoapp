package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.d;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
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
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class AppBarKt$TopAppBar$1 extends v implements q<RowScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $actions;
    final /* synthetic */ p<Composer, Integer, l0> $navigationIcon;
    final /* synthetic */ p<Composer, Integer, l0> $title;

    /* JADX INFO: renamed from: androidx.compose.material.AppBarKt$TopAppBar$1$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ q<RowScope, Composer, Integer, l0> $actions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
            super(2);
            this.$actions = qVar;
            this.$$dirty = i10;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
                return;
            }
            Modifier modifierJ = SizeKt.j(Modifier.Companion, 0.0f, 1, null);
            Arrangement.Horizontal horizontalC = Arrangement.INSTANCE.c();
            Alignment.Vertical verticalI = Alignment.Companion.i();
            q<RowScope, Composer, Integer, l0> qVar = this.$actions;
            int i11 = (this.$$dirty & 7168) | 438;
            composer.G(693286680);
            int i12 = i11 >> 3;
            MeasurePolicy measurePolicyA = RowKt.a(horizontalC, verticalI, composer, (i12 & 112) | (i12 & 14));
            composer.G(-1323940314);
            Density density = (Density) composer.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierJ);
            int i13 = ((((i11 << 3) & 112) << 9) & 7168) | 6;
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
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, Integer.valueOf((i13 >> 3) & 112));
            composer.G(2058660585);
            composer.G(-678309503);
            if (((i13 >> 9) & 10) == 2 && composer.b()) {
                composer.g();
            } else {
                qVar.invoke(RowScopeInstance.INSTANCE, composer, Integer.valueOf(((i11 >> 6) & 112) | 6));
            }
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
    AppBarKt$TopAppBar$1(p<? super Composer, ? super Integer, l0> pVar, int i10, p<? super Composer, ? super Integer, l0> pVar2, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar) {
        super(3);
        this.$navigationIcon = pVar;
        this.$$dirty = i10;
        this.$title = pVar2;
        this.$actions = qVar;
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull RowScope AppBar, @Nullable Composer composer, int i10) {
        int i11;
        t.j(AppBar, "$this$AppBar");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(AppBar) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        if (this.$navigationIcon == null) {
            composer.G(-512812651);
            SpacerKt.a(AppBarKt.TitleInsetWithoutIcon, composer, 6);
            composer.Q();
        } else {
            composer.G(-512812592);
            Modifier modifier = AppBarKt.TitleIconModifier;
            Alignment.Vertical verticalI = Alignment.Companion.i();
            p<Composer, Integer, l0> pVar = this.$navigationIcon;
            int i12 = this.$$dirty;
            composer.G(693286680);
            MeasurePolicy measurePolicyA = RowKt.a(Arrangement.INSTANCE.e(), verticalI, composer, 48);
            composer.G(-1323940314);
            Density density = (Density) composer.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier);
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
            composer.G(1485618042);
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(ContentAlpha.INSTANCE.c(composer, 6)))}, pVar, composer, ((i12 >> 3) & 112) | 8);
            composer.Q();
            composer.Q();
            composer.Q();
            composer.d();
            composer.Q();
            composer.Q();
            composer.Q();
        }
        Modifier modifierA = d.a(AppBar, SizeKt.j(Modifier.Companion, 0.0f, 1, null), 1.0f, false, 2, null);
        Alignment.Vertical verticalI2 = Alignment.Companion.i();
        p<Composer, Integer, l0> pVar2 = this.$title;
        int i13 = this.$$dirty;
        composer.G(693286680);
        MeasurePolicy measurePolicyA2 = RowKt.a(Arrangement.INSTANCE.e(), verticalI2, composer, 48);
        composer.G(-1323940314);
        Density density2 = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection2 = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA2 = companion2.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierA);
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
        Updater.e(composerA2, measurePolicyA2, companion2.d());
        Updater.e(composerA2, density2, companion2.b());
        Updater.e(composerA2, layoutDirection2, companion2.c());
        Updater.e(composerA2, viewConfiguration2, companion2.f());
        composer.o();
        qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-678309503);
        RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
        composer.G(159489950);
        TextKt.a(MaterialTheme.INSTANCE.c(composer, 6).e(), ComposableLambdaKt.b(composer, -2021518195, true, new AppBarKt$TopAppBar$1$2$1(pVar2, i13)), composer, 48);
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(ContentAlpha.INSTANCE.d(composer, 6)))}, ComposableLambdaKt.b(composer, 1157662914, true, new AnonymousClass3(this.$actions, this.$$dirty)), composer, 56);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(RowScope rowScope, Composer composer, Integer num) {
        a(rowScope, composer, num.intValue());
        return l0.INSTANCE;
    }
}
