package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.actionmodecallback.FloatingTextActionModeCallback;
import androidx.compose.ui.platform.actionmodecallback.TextActionModeCallback;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidTextToolbar implements TextToolbar {

    @Nullable
    private ActionMode actionMode;

    @NotNull
    private TextToolbarStatus status;

    @NotNull
    private final TextActionModeCallback textActionModeCallback;

    @NotNull
    private final View view;

    @Override // androidx.compose.ui.platform.TextToolbar
    @NotNull
    public TextToolbarStatus getStatus() {
        return this.status;
    }

    public AndroidTextToolbar(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "view");
        this.view = view;
        this.textActionModeCallback = new TextActionModeCallback(new AndroidTextToolbar$textActionModeCallback$1(this), null, null, null, null, null, 62, null);
        this.status = TextToolbarStatus.Hidden;
    }

    @Override // androidx.compose.ui.platform.TextToolbar
    public void a(@NotNull Rect rect, @Nullable e8.a<w7.l0> aVar, @Nullable e8.a<w7.l0> aVar2, @Nullable e8.a<w7.l0> aVar3, @Nullable e8.a<w7.l0> aVar4) {
        kotlin.jvm.internal.t.j(rect, "rect");
        this.textActionModeCallback.l(rect);
        this.textActionModeCallback.h(aVar);
        this.textActionModeCallback.i(aVar3);
        this.textActionModeCallback.j(aVar2);
        this.textActionModeCallback.k(aVar4);
        ActionMode actionMode = this.actionMode;
        if (actionMode == null) {
            this.status = TextToolbarStatus.Shown;
            this.actionMode = TextToolbarHelperMethods.INSTANCE.b(this.view, new FloatingTextActionModeCallback(this.textActionModeCallback), 1);
        } else if (actionMode != null) {
            actionMode.invalidate();
        }
    }

    @Override // androidx.compose.ui.platform.TextToolbar
    public void hide() {
        this.status = TextToolbarStatus.Hidden;
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.actionMode = null;
    }
}
