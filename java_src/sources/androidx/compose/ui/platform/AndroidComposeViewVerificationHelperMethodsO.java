package androidx.compose.ui.platform;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
final class AndroidComposeViewVerificationHelperMethodsO {

    @NotNull
    public static final AndroidComposeViewVerificationHelperMethodsO INSTANCE = new AndroidComposeViewVerificationHelperMethodsO();

    @DoNotInline
    @RequiresApi
    public final void a(@NotNull View view, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(view, "view");
        view.setFocusable(i10);
        view.setDefaultFocusHighlightEnabled(z6);
    }

    private AndroidComposeViewVerificationHelperMethodsO() {
    }
}
