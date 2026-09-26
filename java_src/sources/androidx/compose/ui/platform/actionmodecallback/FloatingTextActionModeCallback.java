package androidx.compose.ui.platform.actionmodecallback;

import android.graphics.Rect;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class FloatingTextActionModeCallback extends ActionMode.Callback2 {

    @NotNull
    private final TextActionModeCallback callback;

    public FloatingTextActionModeCallback(@NotNull TextActionModeCallback callback) {
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

    @Override // android.view.ActionMode.Callback2
    public void onGetContentRect(@Nullable ActionMode actionMode, @Nullable View view, @Nullable Rect rect) {
        androidx.compose.ui.geometry.Rect rectC = this.callback.c();
        if (rect != null) {
            rect.set((int) rectC.j(), (int) rectC.m(), (int) rectC.k(), (int) rectC.e());
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(@Nullable ActionMode actionMode, @Nullable Menu menu) {
        return this.callback.g(actionMode, menu);
    }
}
