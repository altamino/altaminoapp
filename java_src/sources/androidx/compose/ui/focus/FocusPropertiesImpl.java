package androidx.compose.ui.focus;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class FocusPropertiesImpl implements FocusProperties {
    private boolean canFocus = true;

    @NotNull
    private FocusRequester down;

    @NotNull
    private FocusRequester end;

    @NotNull
    private FocusRequester left;

    @NotNull
    private FocusRequester next;

    @NotNull
    private FocusRequester previous;

    @NotNull
    private FocusRequester right;

    @NotNull
    private FocusRequester start;

    @NotNull
    private FocusRequester up;

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester a() {
        return this.right;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester c() {
        return this.left;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester d() {
        return this.up;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void e(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.up = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester f() {
        return this.down;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void g(boolean z6) {
        this.canFocus = z6;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getEnd() {
        return this.end;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getStart() {
        return this.start;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void h(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.down = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void i(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.start = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester j() {
        return this.previous;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester k() {
        return this.next;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void l(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.previous = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void m(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.end = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void n(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.left = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void o(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.right = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public boolean p() {
        return this.canFocus;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void q(@NotNull FocusRequester focusRequester) {
        t.j(focusRequester, "<set-?>");
        this.next = focusRequester;
    }

    public FocusPropertiesImpl() {
        FocusRequester.Companion companion = FocusRequester.Companion;
        this.next = companion.a();
        this.previous = companion.a();
        this.up = companion.a();
        this.down = companion.a();
        this.left = companion.a();
        this.right = companion.a();
        this.start = companion.a();
        this.end = companion.a();
    }
}
