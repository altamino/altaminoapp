package androidx.compose.ui.autofill;

import android.view.ViewStructure;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class AutofillApi23Helper {

    @NotNull
    public static final AutofillApi23Helper INSTANCE = new AutofillApi23Helper();

    @DoNotInline
    @RequiresApi
    public final int a(@NotNull ViewStructure structure, int i10) {
        t.j(structure, "structure");
        return structure.addChildCount(i10);
    }

    @DoNotInline
    @RequiresApi
    @Nullable
    public final ViewStructure b(@NotNull ViewStructure structure, int i10) {
        t.j(structure, "structure");
        return structure.newChild(i10);
    }

    @DoNotInline
    @RequiresApi
    public final void c(@NotNull ViewStructure structure, int i10, int i11, int i12, int i13, int i14, int i15) {
        t.j(structure, "structure");
        structure.setDimens(i10, i11, i12, i13, i14, i15);
    }

    @DoNotInline
    @RequiresApi
    public final void d(@NotNull ViewStructure structure, int i10, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        t.j(structure, "structure");
        structure.setId(i10, str, str2, str3);
    }

    private AutofillApi23Helper() {
    }
}
