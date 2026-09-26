package androidx.compose.ui.platform;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.input.pointer.AndroidPointerIcon;
import androidx.compose.ui.input.pointer.AndroidPointerIconType;
import androidx.compose.ui.input.pointer.PointerIcon;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
final class AndroidComposeViewVerificationHelperMethodsN {

    @NotNull
    public static final AndroidComposeViewVerificationHelperMethodsN INSTANCE = new AndroidComposeViewVerificationHelperMethodsN();

    @DoNotInline
    @RequiresApi
    public final void a(@NotNull View view, @Nullable PointerIcon pointerIcon) {
        android.view.PointerIcon systemIcon;
        kotlin.jvm.internal.t.j(view, "view");
        if (pointerIcon instanceof AndroidPointerIcon) {
            systemIcon = ((AndroidPointerIcon) pointerIcon).a();
        } else {
            systemIcon = pointerIcon instanceof AndroidPointerIconType ? android.view.PointerIcon.getSystemIcon(view.getContext(), ((AndroidPointerIconType) pointerIcon).a()) : android.view.PointerIcon.getSystemIcon(view.getContext(), 1000);
        }
        if (kotlin.jvm.internal.t.e(view.getPointerIcon(), systemIcon)) {
            return;
        }
        view.setPointerIcon(systemIcon);
    }

    private AndroidComposeViewVerificationHelperMethodsN() {
    }
}
