package androidx.compose.ui.platform;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class AndroidComposeViewForceDarkModeQ {

    @NotNull
    public static final AndroidComposeViewForceDarkModeQ INSTANCE = new AndroidComposeViewForceDarkModeQ();

    @DoNotInline
    @RequiresApi
    public final void a(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "view");
        view.setForceDarkAllowed(false);
    }

    private AndroidComposeViewForceDarkModeQ() {
    }
}
