package androidx.compose.ui.text.android;

import android.text.StaticLayout;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class StaticLayoutFactory26 {

    @NotNull
    public static final StaticLayoutFactory26 INSTANCE = new StaticLayoutFactory26();

    @DoNotInline
    public final void a(@NotNull StaticLayout.Builder builder, int i10) {
        t.j(builder, "builder");
        builder.setJustificationMode(i10);
    }

    private StaticLayoutFactory26() {
    }
}
