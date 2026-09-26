package androidx.compose.ui.focus;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultFocusProperties implements FocusProperties {

    @NotNull
    public static final DefaultFocusProperties INSTANCE = new DefaultFocusProperties();

    @Override // androidx.compose.ui.focus.FocusProperties
    public boolean p() {
        return true;
    }

    private final Void b() {
        throw new IllegalStateException("Attempting to change DefaultFocusProperties".toString());
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester a() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester c() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester d() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void e(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester f() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getEnd() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getStart() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void h(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void i(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester j() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester k() {
        return FocusRequester.Companion.a();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void l(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void m(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void n(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void o(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void q(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<anonymous parameter 0>");
        b();
        throw new i();
    }

    private DefaultFocusProperties() {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void g(boolean z6) {
        b();
        throw new i();
    }
}
