package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
public final class TextToolbarHelperMethods {

    @NotNull
    public static final TextToolbarHelperMethods INSTANCE = new TextToolbarHelperMethods();

    @DoNotInline
    @RequiresApi
    public final void a(@NotNull ActionMode actionMode) {
        kotlin.jvm.internal.t.j(actionMode, "actionMode");
        actionMode.invalidateContentRect();
    }

    @DoNotInline
    @RequiresApi
    @Nullable
    public final ActionMode b(@NotNull View view, @NotNull ActionMode.Callback actionModeCallback, int i10) {
        kotlin.jvm.internal.t.j(view, "view");
        kotlin.jvm.internal.t.j(actionModeCallback, "actionModeCallback");
        return view.startActionMode(actionModeCallback, i10);
    }

    private TextToolbarHelperMethods() {
    }
}
