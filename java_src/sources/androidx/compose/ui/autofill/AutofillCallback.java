package androidx.compose.ui.autofill;

import android.util.Log;
import android.view.View;
import android.view.autofill.AutofillManager$AutofillCallback;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import u.n;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class AutofillCallback extends AutofillManager$AutofillCallback {

    @NotNull
    public static final AutofillCallback INSTANCE = new AutofillCallback();

    @DoNotInline
    @ExperimentalComposeUiApi
    public final void a(@NotNull AndroidAutofill autofill) {
        t.j(autofill, "autofill");
        autofill.a().registerCallback(n.a(this));
    }

    @DoNotInline
    @ExperimentalComposeUiApi
    public final void b(@NotNull AndroidAutofill autofill) {
        t.j(autofill, "autofill");
        autofill.a().unregisterCallback(n.a(this));
    }

    public void onAutofillEvent(@NotNull View view, int i10, int i11) {
        String str;
        t.j(view, "view");
        super.onAutofillEvent(view, i10, i11);
        if (i11 == 1) {
            str = "Autofill popup was shown.";
        } else if (i11 != 2) {
            str = i11 != 3 ? "Unknown status event." : "Autofill popup isn't shown because autofill is not available.\n\nDid you set up autofill?\n1. Go to Settings > System > Languages&input > Advanced > Autofill Service\n2. Pick a service\n\nDid you add an account?\n1. Go to Settings > System > Languages&input > Advanced\n2. Click on the settings icon next to the Autofill Service\n3. Add your account";
        } else {
            str = "Autofill popup was hidden.";
        }
        Log.d("Autofill Status", str);
    }

    private AutofillCallback() {
    }
}
