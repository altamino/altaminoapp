package androidx.compose.ui.autofill;

import android.view.View;
import android.view.autofill.AutofillManager;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import u.a;
import u.b;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
@ExperimentalComposeUiApi
public final class AndroidAutofill implements Autofill {

    @NotNull
    private final AutofillManager autofillManager;

    @NotNull
    private final AutofillTree autofillTree;

    @NotNull
    private final View view;

    @NotNull
    public final AutofillManager a() {
        return this.autofillManager;
    }

    @NotNull
    public final AutofillTree b() {
        return this.autofillTree;
    }

    @NotNull
    public final View c() {
        return this.view;
    }

    public AndroidAutofill(@NotNull View view, @NotNull AutofillTree autofillTree) {
        t.j(view, "view");
        t.j(autofillTree, "autofillTree");
        this.view = view;
        this.autofillTree = autofillTree;
        AutofillManager autofillManagerA = b.a(view.getContext().getSystemService(a.a()));
        if (autofillManagerA == null) {
            throw new IllegalStateException("Autofill service could not be located.".toString());
        }
        this.autofillManager = autofillManagerA;
        view.setImportantForAutofill(1);
    }
}
