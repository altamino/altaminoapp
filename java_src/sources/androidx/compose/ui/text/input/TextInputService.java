package androidx.compose.ui.text.input;

import androidx.compose.animation.core.d;
import e8.l;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public class TextInputService {

    @NotNull
    private final AtomicReference<TextInputSession> _currentInputSession;

    @NotNull
    private final PlatformTextInputService platformTextInputService;

    public TextInputService(@NotNull PlatformTextInputService platformTextInputService) {
        t.j(platformTextInputService, "platformTextInputService");
        this.platformTextInputService = platformTextInputService;
        this._currentInputSession = new AtomicReference<>(null);
    }

    @Nullable
    public final TextInputSession a() {
        return this._currentInputSession.get();
    }

    @NotNull
    public TextInputSession b(@NotNull TextFieldValue value, @NotNull ImeOptions imeOptions, @NotNull l<? super List<? extends EditCommand>, l0> onEditCommand, @NotNull l<? super ImeAction, l0> onImeActionPerformed) {
        t.j(value, "value");
        t.j(imeOptions, "imeOptions");
        t.j(onEditCommand, "onEditCommand");
        t.j(onImeActionPerformed, "onImeActionPerformed");
        this.platformTextInputService.c(value, imeOptions, onEditCommand, onImeActionPerformed);
        TextInputSession textInputSession = new TextInputSession(this, this.platformTextInputService);
        this._currentInputSession.set(textInputSession);
        return textInputSession;
    }

    public void c(@NotNull TextInputSession session) {
        t.j(session, "session");
        if (d.a(this._currentInputSession, session, null)) {
            this.platformTextInputService.a();
        }
    }
}
