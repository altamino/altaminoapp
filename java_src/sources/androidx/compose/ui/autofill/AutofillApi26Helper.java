package androidx.compose.ui.autofill;

import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
public final class AutofillApi26Helper {

    @NotNull
    public static final AutofillApi26Helper INSTANCE = new AutofillApi26Helper();

    @DoNotInline
    @RequiresApi
    @Nullable
    public final AutofillId a(@NotNull ViewStructure structure) {
        t.j(structure, "structure");
        return structure.getAutofillId();
    }

    @DoNotInline
    @RequiresApi
    public final boolean b(@NotNull AutofillValue value) {
        t.j(value, "value");
        return value.isDate();
    }

    @DoNotInline
    @RequiresApi
    public final boolean c(@NotNull AutofillValue value) {
        t.j(value, "value");
        return value.isList();
    }

    @DoNotInline
    @RequiresApi
    public final boolean d(@NotNull AutofillValue value) {
        t.j(value, "value");
        return value.isText();
    }

    @DoNotInline
    @RequiresApi
    public final boolean e(@NotNull AutofillValue value) {
        t.j(value, "value");
        return value.isToggle();
    }

    @DoNotInline
    @RequiresApi
    public final void f(@NotNull ViewStructure structure, @NotNull String[] hints) {
        t.j(structure, "structure");
        t.j(hints, "hints");
        structure.setAutofillHints(hints);
    }

    @DoNotInline
    @RequiresApi
    public final void g(@NotNull ViewStructure structure, @NotNull AutofillId parent, int i10) {
        t.j(structure, "structure");
        t.j(parent, "parent");
        structure.setAutofillId(parent, i10);
    }

    @DoNotInline
    @RequiresApi
    public final void h(@NotNull ViewStructure structure, int i10) {
        t.j(structure, "structure");
        structure.setAutofillType(i10);
    }

    @DoNotInline
    @RequiresApi
    @NotNull
    public final CharSequence i(@NotNull AutofillValue value) {
        t.j(value, "value");
        CharSequence textValue = value.getTextValue();
        t.i(textValue, "value.textValue");
        return textValue;
    }

    private AutofillApi26Helper() {
    }
}
