package androidx.compose.ui.text.android;

import android.text.StaticLayout;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class StaticLayoutFactory28 {

    @NotNull
    public static final StaticLayoutFactory28 INSTANCE = new StaticLayoutFactory28();

    @DoNotInline
    public final void a(@NotNull StaticLayout.Builder builder, boolean z6) {
        t.j(builder, "builder");
        builder.setUseLineSpacingFromFallbacks(z6);
    }

    private StaticLayoutFactory28() {
    }
}
