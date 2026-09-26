package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.activity.FullyDrawnReporterOwner;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import e8.a;
import e8.l;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ReportDrawnKt {
    @Composable
    public static final void b(@NotNull l<? super d<? super l0>, ? extends Object> block, @Nullable Composer composer, int i10) {
        FullyDrawnReporter fullyDrawnReporter;
        t.j(block, "block");
        Composer composerS = composer.s(945311272);
        FullyDrawnReporterOwner fullyDrawnReporterOwnerA = LocalFullyDrawnReporterOwner.INSTANCE.a(composerS, 6);
        if (fullyDrawnReporterOwnerA == null || (fullyDrawnReporter = fullyDrawnReporterOwnerA.getFullyDrawnReporter()) == null) {
            ScopeUpdateScope scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ReportDrawnKt$ReportDrawnAfter$fullyDrawnReporter$1(block, i10));
            return;
        }
        EffectsKt.e(block, fullyDrawnReporter, new ReportDrawnKt$ReportDrawnAfter$1(fullyDrawnReporter, block, null), composerS, 584);
        ScopeUpdateScope scopeUpdateScopeU2 = composerS.u();
        if (scopeUpdateScopeU2 == null) {
            return;
        }
        scopeUpdateScopeU2.a(new ReportDrawnKt$ReportDrawnAfter$2(block, i10));
    }

    @Composable
    public static final void c(@NotNull a<Boolean> predicate, @Nullable Composer composer, int i10) {
        int i11;
        FullyDrawnReporter fullyDrawnReporter;
        t.j(predicate, "predicate");
        Composer composerS = composer.s(-2047119994);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(predicate) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            FullyDrawnReporterOwner fullyDrawnReporterOwnerA = LocalFullyDrawnReporterOwner.INSTANCE.a(composerS, 6);
            if (fullyDrawnReporterOwnerA == null || (fullyDrawnReporter = fullyDrawnReporterOwnerA.getFullyDrawnReporter()) == null) {
                ScopeUpdateScope scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ReportDrawnKt$ReportDrawnWhen$fullyDrawnReporter$1(predicate, i10));
                return;
            }
            EffectsKt.b(fullyDrawnReporter, predicate, new ReportDrawnKt$ReportDrawnWhen$1(fullyDrawnReporter, predicate), composerS, ((i11 << 3) & 112) | 8);
        }
        ScopeUpdateScope scopeUpdateScopeU2 = composerS.u();
        if (scopeUpdateScopeU2 == null) {
            return;
        }
        scopeUpdateScopeU2.a(new ReportDrawnKt$ReportDrawnWhen$2(predicate, i10));
    }

    @Composable
    public static final void a(@Nullable Composer composer, int i10) {
        Composer composerS = composer.s(-1357012904);
        if (i10 == 0 && composerS.b()) {
            composerS.g();
        } else {
            c(ReportDrawnKt$ReportDrawn$1.INSTANCE, composerS, 6);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new ReportDrawnKt$ReportDrawn$2(i10));
        }
    }
}
