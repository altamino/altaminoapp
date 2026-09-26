package androidx.compose.ui.text.input;

import android.content.Context;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class InputMethodManagerImpl$imm$2 extends v implements e8.a<android.view.inputmethod.InputMethodManager> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InputMethodManagerImpl$imm$2(Context context) {
        super(0);
        this.$context = context;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final android.view.inputmethod.InputMethodManager invoke() {
        Object systemService = this.$context.getSystemService("input_method");
        if (systemService != null) {
            return (android.view.inputmethod.InputMethodManager) systemService;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
    }
}
