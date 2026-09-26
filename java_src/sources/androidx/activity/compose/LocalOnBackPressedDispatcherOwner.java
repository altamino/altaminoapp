package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.ViewTreeOnBackPressedDispatcherOwner;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class LocalOnBackPressedDispatcherOwner {
    public static final int $stable = 0;

    @NotNull
    public static final LocalOnBackPressedDispatcherOwner INSTANCE = new LocalOnBackPressedDispatcherOwner();

    @NotNull
    private static final ProvidableCompositionLocal<OnBackPressedDispatcherOwner> LocalOnBackPressedDispatcherOwner = CompositionLocalKt.d(null, LocalOnBackPressedDispatcherOwner$LocalOnBackPressedDispatcherOwner$1.INSTANCE, 1, null);

    private LocalOnBackPressedDispatcherOwner() {
    }

    @Composable
    @Nullable
    public final OnBackPressedDispatcherOwner a(@Nullable Composer composer, int i10) {
        composer.G(-2068013981);
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwnerA = (OnBackPressedDispatcherOwner) composer.x(LocalOnBackPressedDispatcherOwner);
        composer.G(1680121597);
        if (onBackPressedDispatcherOwnerA == null) {
            onBackPressedDispatcherOwnerA = ViewTreeOnBackPressedDispatcherOwner.a((View) composer.x(AndroidCompositionLocals_androidKt.k()));
        }
        composer.Q();
        if (onBackPressedDispatcherOwnerA == null) {
            Object baseContext = (Context) composer.x(AndroidCompositionLocals_androidKt.g());
            while (true) {
                if (baseContext instanceof ContextWrapper) {
                    if (baseContext instanceof OnBackPressedDispatcherOwner) {
                        break;
                    }
                    baseContext = ((ContextWrapper) baseContext).getBaseContext();
                    t.i(baseContext, "innerContext.baseContext");
                } else {
                    baseContext = null;
                    break;
                }
            }
            onBackPressedDispatcherOwnerA = (OnBackPressedDispatcherOwner) baseContext;
        }
        composer.Q();
        return onBackPressedDispatcherOwnerA;
    }
}
