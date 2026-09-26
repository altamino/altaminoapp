package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.activity.FullyDrawnReporterOwner;
import androidx.activity.ViewTreeFullyDrawnReporterOwner;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
public final class LocalFullyDrawnReporterOwner {
    public static final int $stable = 0;

    @NotNull
    public static final LocalFullyDrawnReporterOwner INSTANCE = new LocalFullyDrawnReporterOwner();

    @NotNull
    private static final ProvidableCompositionLocal<FullyDrawnReporterOwner> LocalFullyDrawnReporterOwner = CompositionLocalKt.d(null, LocalFullyDrawnReporterOwner$LocalFullyDrawnReporterOwner$1.INSTANCE, 1, null);

    private LocalFullyDrawnReporterOwner() {
    }

    @Composable
    @Nullable
    public final FullyDrawnReporterOwner a(@Nullable Composer composer, int i10) {
        composer.G(540186968);
        FullyDrawnReporterOwner fullyDrawnReporterOwnerA = (FullyDrawnReporterOwner) composer.x(LocalFullyDrawnReporterOwner);
        composer.G(1606493384);
        if (fullyDrawnReporterOwnerA == null) {
            fullyDrawnReporterOwnerA = ViewTreeFullyDrawnReporterOwner.a((View) composer.x(AndroidCompositionLocals_androidKt.k()));
        }
        composer.Q();
        if (fullyDrawnReporterOwnerA == null) {
            Object baseContext = (Context) composer.x(AndroidCompositionLocals_androidKt.g());
            while (true) {
                if (baseContext instanceof ContextWrapper) {
                    if (baseContext instanceof FullyDrawnReporterOwner) {
                        break;
                    }
                    baseContext = ((ContextWrapper) baseContext).getBaseContext();
                    t.i(baseContext, "innerContext.baseContext");
                } else {
                    baseContext = null;
                    break;
                }
            }
            fullyDrawnReporterOwnerA = (FullyDrawnReporterOwner) baseContext;
        }
        composer.Q();
        return fullyDrawnReporterOwnerA;
    }
}
