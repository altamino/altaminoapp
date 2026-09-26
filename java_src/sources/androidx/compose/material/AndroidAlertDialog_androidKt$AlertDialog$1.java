package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidAlertDialog_androidKt$AlertDialog$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $confirmButton;
    final /* synthetic */ p<Composer, Integer, l0> $dismissButton;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidAlertDialog_androidKt$AlertDialog$1(p<? super Composer, ? super Integer, l0> pVar, int i10, p<? super Composer, ? super Integer, l0> pVar2) {
        super(2);
        this.$dismissButton = pVar;
        this.$$dirty = i10;
        this.$confirmButton = pVar2;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        float f = 8;
        Modifier modifierJ = PaddingKt.j(SizeKt.n(Modifier.Companion, 0.0f, 1, null), Dp.f(f), Dp.f(2));
        p<Composer, Integer, l0> pVar = this.$dismissButton;
        int i11 = this.$$dirty;
        p<Composer, Integer, l0> pVar2 = this.$confirmButton;
        composer.G(733328855);
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composer, 0);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierJ);
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
        composer.G(-434861445);
        AlertDialogKt.c(Dp.f(f), Dp.f(12), ComposableLambdaKt.b(composer, 1789213604, true, new AndroidAlertDialog_androidKt$AlertDialog$1$1$1(pVar, i11, pVar2)), composer, 438);
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
