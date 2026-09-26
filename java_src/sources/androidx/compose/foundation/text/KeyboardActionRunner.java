package androidx.compose.foundation.text;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.text.input.ImeAction;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class KeyboardActionRunner implements KeyboardActionScope {
    public FocusManager focusManager;
    public KeyboardActions keyboardActions;

    public final void e(@NotNull FocusManager focusManager) {
        t.j(focusManager, "<set-?>");
        this.focusManager = focusManager;
    }

    public final void f(@NotNull KeyboardActions keyboardActions) {
        t.j(keyboardActions, "<set-?>");
        this.keyboardActions = keyboardActions;
    }

    public void a(int i10) {
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.l(i10, companion.d())) {
            b().a(FocusDirection.Companion.d());
            return;
        }
        if (ImeAction.l(i10, companion.f())) {
            b().a(FocusDirection.Companion.f());
            return;
        }
        if (ImeAction.l(i10, companion.b()) || ImeAction.l(i10, companion.c()) || ImeAction.l(i10, companion.g()) || ImeAction.l(i10, companion.h()) || ImeAction.l(i10, companion.a())) {
            return;
        }
        ImeAction.l(i10, companion.e());
    }

    @NotNull
    public final FocusManager b() {
        FocusManager focusManager = this.focusManager;
        if (focusManager != null) {
            return focusManager;
        }
        t.B("focusManager");
        return null;
    }

    @NotNull
    public final KeyboardActions c() {
        KeyboardActions keyboardActions = this.keyboardActions;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        t.B("keyboardActions");
        return null;
    }

    public final void d(int i10) {
        l<KeyboardActionScope, l0> lVarG;
        ImeAction.Companion companion = ImeAction.Companion;
        l0 l0Var = null;
        if (ImeAction.l(i10, companion.b())) {
            lVarG = c().b();
        } else if (ImeAction.l(i10, companion.c())) {
            lVarG = c().c();
        } else if (ImeAction.l(i10, companion.d())) {
            lVarG = c().d();
        } else if (ImeAction.l(i10, companion.f())) {
            lVarG = c().e();
        } else if (ImeAction.l(i10, companion.g())) {
            lVarG = c().f();
        } else if (ImeAction.l(i10, companion.h())) {
            lVarG = c().g();
        } else {
            if (!ImeAction.l(i10, companion.a()) && !ImeAction.l(i10, companion.e())) {
                throw new IllegalStateException("invalid ImeAction".toString());
            }
            lVarG = null;
        }
        if (lVarG != null) {
            lVarG.invoke(this);
            l0Var = l0.INSTANCE;
        }
        if (l0Var == null) {
            a(i10);
        }
    }
}
