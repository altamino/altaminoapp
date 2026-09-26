package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
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
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AlertDialogKt$AlertDialogContent$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $buttons;
    final /* synthetic */ p<Composer, Integer, l0> $text;
    final /* synthetic */ p<Composer, Integer, l0> $title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AlertDialogKt$AlertDialogContent$1(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, int i10) {
        super(2);
        this.$title = pVar;
        this.$text = pVar2;
        this.$buttons = pVar3;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        p<Composer, Integer, l0> pVar = this.$title;
        p<Composer, Integer, l0> pVar2 = this.$text;
        p<Composer, Integer, l0> pVar3 = this.$buttons;
        int i11 = this.$$dirty;
        composer.G(-483455358);
        Modifier.Companion companion = Modifier.Companion;
        MeasurePolicy measurePolicyA = ColumnKt.a(Arrangement.INSTANCE.f(), Alignment.Companion.k(), composer, 0);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion2.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(companion);
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
        composer.G(523699273);
        AlertDialogKt.a(columnScopeInstance, pVar != null ? ComposableLambdaKt.b(composer, 620104160, true, new AlertDialogKt$AlertDialogContent$1$1$1$1(pVar, i11)) : null, pVar2 != null ? ComposableLambdaKt.b(composer, 1965858367, true, new AlertDialogKt$AlertDialogContent$1$1$2$1(pVar2, i11)) : null, composer, 6);
        pVar3.invoke(composer, Integer.valueOf(i11 & 14));
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
