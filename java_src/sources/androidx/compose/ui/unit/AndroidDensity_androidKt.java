package androidx.compose.ui.unit;

import android.content.Context;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class AndroidDensity_androidKt {
    @NotNull
    public static final Density a(@NotNull Context context) {
        t.j(context, "context");
        return DensityKt.a(context.getResources().getDisplayMetrics().density, context.getResources().getConfiguration().fontScale);
    }
}
