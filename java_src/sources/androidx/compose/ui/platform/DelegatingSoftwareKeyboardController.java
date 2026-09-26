package androidx.compose.ui.platform;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.text.input.TextInputService;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@ExperimentalComposeUiApi
final class DelegatingSoftwareKeyboardController implements SoftwareKeyboardController {

    @NotNull
    private final TextInputService textInputService;

    public DelegatingSoftwareKeyboardController(@NotNull TextInputService textInputService) {
        kotlin.jvm.internal.t.j(textInputService, "textInputService");
        this.textInputService = textInputService;
    }
}
