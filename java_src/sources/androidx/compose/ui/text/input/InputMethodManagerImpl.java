package androidx.compose.ui.text.input;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.ExtractedText;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes7.dex */
public final class InputMethodManagerImpl implements InputMethodManager {

    @NotNull
    private final m imm$delegate;

    public InputMethodManagerImpl(@NotNull Context context) {
        t.j(context, "context");
        this.imm$delegate = o.b(q.NONE, new InputMethodManagerImpl$imm$2(context));
    }

    private final android.view.inputmethod.InputMethodManager f() {
        return (android.view.inputmethod.InputMethodManager) this.imm$delegate.getValue();
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void a(@NotNull View view) {
        t.j(view, "view");
        f().showSoftInput(view, 0);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void c(@NotNull View view, int i10, int i11, int i12, int i13) {
        t.j(view, "view");
        f().updateSelection(view, i10, i11, i12, i13);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void d(@NotNull View view, int i10, @NotNull ExtractedText extractedText) {
        t.j(view, "view");
        t.j(extractedText, "extractedText");
        f().updateExtractedText(view, i10, extractedText);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void e(@NotNull View view) {
        t.j(view, "view");
        f().restartInput(view);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void b(@Nullable IBinder iBinder) {
        f().hideSoftInputFromWindow(iBinder, 0);
    }
}
