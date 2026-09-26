package androidx.compose.ui.focus;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface FocusProperties {
    @NotNull
    FocusRequester a();

    @NotNull
    FocusRequester c();

    @NotNull
    FocusRequester d();

    void e(@NotNull FocusRequester focusRequester);

    @NotNull
    FocusRequester f();

    void g(boolean z6);

    @NotNull
    FocusRequester getEnd();

    @NotNull
    FocusRequester getStart();

    void h(@NotNull FocusRequester focusRequester);

    void i(@NotNull FocusRequester focusRequester);

    @NotNull
    FocusRequester j();

    @NotNull
    FocusRequester k();

    void l(@NotNull FocusRequester focusRequester);

    void m(@NotNull FocusRequester focusRequester);

    void n(@NotNull FocusRequester focusRequester);

    void o(@NotNull FocusRequester focusRequester);

    boolean p();

    void q(@NotNull FocusRequester focusRequester);
}
