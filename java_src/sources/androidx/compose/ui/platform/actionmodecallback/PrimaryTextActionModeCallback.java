package androidx.compose.ui.platform.actionmodecallback;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class PrimaryTextActionModeCallback implements ActionMode.Callback {

    @NotNull
    private final TextActionModeCallback callback;

    public PrimaryTextActionModeCallback(@NotNull TextActionModeCallback callback) {
        t.j(callback, "callback");
        this.callback = callback;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(@Nullable ActionMode actionMode, @Nullable MenuItem menuItem) {
        return this.callback.d(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(@Nullable ActionMode actionMode, @Nullable Menu menu) {
        return this.callback.e(actionMode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(@Nullable ActionMode actionMode) {
        this.callback.f();
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(@Nullable ActionMode actionMode, @Nullable Menu menu) {
        return this.callback.g(actionMode, menu);
    }
}
