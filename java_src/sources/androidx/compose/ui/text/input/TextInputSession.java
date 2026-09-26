package androidx.compose.ui.text.input;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class TextInputSession {

    @NotNull
    private final PlatformTextInputService platformTextInputService;

    @NotNull
    private final TextInputService textInputService;

    public TextInputSession(@NotNull TextInputService textInputService, @NotNull PlatformTextInputService platformTextInputService) {
        t.j(textInputService, "textInputService");
        t.j(platformTextInputService, "platformTextInputService");
        this.textInputService = textInputService;
        this.platformTextInputService = platformTextInputService;
    }

    public final void a() {
        this.textInputService.c(this);
    }

    public final boolean b() {
        return t.e(this.textInputService.a(), this);
    }

    public final boolean d(@Nullable TextFieldValue textFieldValue, @NotNull TextFieldValue newValue) {
        t.j(newValue, "newValue");
        boolean zB = b();
        if (zB) {
            this.platformTextInputService.b(textFieldValue, newValue);
        }
        return zB;
    }

    public final boolean c() {
        boolean zB = b();
        if (zB) {
            this.platformTextInputService.d();
        }
        return zB;
    }
}
