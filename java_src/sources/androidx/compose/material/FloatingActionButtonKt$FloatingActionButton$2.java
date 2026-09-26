package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
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
import androidx.compose.ui.graphics.Color;
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
final class FloatingActionButtonKt$FloatingActionButton$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;

    /* JADX INFO: renamed from: androidx.compose.material.FloatingActionButtonKt$FloatingActionButton$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ p<Composer, Integer, l0> $content;

        /* JADX INFO: renamed from: androidx.compose.material.FloatingActionButtonKt$FloatingActionButton$2$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00611 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ p<Composer, Integer, l0> $content;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00611(p<? super Composer, ? super Integer, l0> pVar, int i10) {
                super(2);
                this.$content = pVar;
                this.$$dirty = i10;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                Modifier modifierG = SizeKt.g(Modifier.Companion, FloatingActionButtonKt.FabSize, FloatingActionButtonKt.FabSize);
                Alignment alignmentE = Alignment.Companion.e();
                p<Composer, Integer, l0> pVar = this.$content;
                int i11 = this.$$dirty;
                composer.G(733328855);
                MeasurePolicy measurePolicyH = BoxKt.h(alignmentE, false, composer, 6);
                composer.G(-1323940314);
                Density density = (Density) composer.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                a<ComposeUiNode> aVarA = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierG);
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
                composer.G(-1049034642);
                pVar.invoke(composer, Integer.valueOf((i11 >> 21) & 14));
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
        AnonymousClass1(p<? super Composer, ? super Integer, l0> pVar, int i10) {
            super(2);
            this.$content = pVar;
            this.$$dirty = i10;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                TextKt.a(MaterialTheme.INSTANCE.c(composer, 6).c(), ComposableLambdaKt.b(composer, -1567914264, true, new C00611(this.$content, this.$$dirty)), composer, 48);
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
    FloatingActionButtonKt$FloatingActionButton$2(long j6, p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$contentColor = j6;
        this.$content = pVar;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(Color.o(this.$contentColor)))}, ComposableLambdaKt.b(composer, 1867794295, true, new AnonymousClass1(this.$content, this.$$dirty)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
