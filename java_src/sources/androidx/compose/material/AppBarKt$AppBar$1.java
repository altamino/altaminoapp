package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class AppBarKt$AppBar$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
    final /* synthetic */ PaddingValues $contentPadding;

    /* JADX INFO: renamed from: androidx.compose.material.AppBarKt$AppBar$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
        final /* synthetic */ PaddingValues $contentPadding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PaddingValues paddingValues, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
            super(2);
            this.$contentPadding = paddingValues;
            this.$content = qVar;
            this.$$dirty = i10;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
                return;
            }
            Modifier modifierO = SizeKt.o(PaddingKt.h(SizeKt.n(Modifier.Companion, 0.0f, 1, null), this.$contentPadding), AppBarKt.AppBarHeight);
            Arrangement.Horizontal horizontalE = Arrangement.INSTANCE.e();
            Alignment.Vertical verticalI = Alignment.Companion.i();
            q<RowScope, Composer, Integer, l0> qVar = this.$content;
            int i11 = ((this.$$dirty >> 9) & 7168) | 432;
            composer.G(693286680);
            int i12 = i11 >> 3;
            MeasurePolicy measurePolicyA = RowKt.a(horizontalE, verticalI, composer, (i12 & 112) | (i12 & 14));
            composer.G(-1323940314);
            Density density = (Density) composer.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierO);
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
    AppBarKt$AppBar$1(PaddingValues paddingValues, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
        super(2);
        this.$contentPadding = paddingValues;
        this.$content = qVar;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(ContentAlpha.INSTANCE.d(composer, 6)))}, ComposableLambdaKt.b(composer, 1296061040, true, new AnonymousClass1(this.$contentPadding, this.$content, this.$$dirty)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
