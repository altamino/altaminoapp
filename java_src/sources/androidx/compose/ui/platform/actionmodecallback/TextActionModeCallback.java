package androidx.compose.ui.platform.actionmodecallback;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.geometry.Rect;
import e8.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class TextActionModeCallback {

    @Nullable
    private final a<l0> onActionModeDestroy;

    @Nullable
    private a<l0> onCopyRequested;

    @Nullable
    private a<l0> onCutRequested;

    @Nullable
    private a<l0> onPasteRequested;

    @Nullable
    private a<l0> onSelectAllRequested;

    @NotNull
    private Rect rect;

    public TextActionModeCallback() {
        this(null, null, null, null, null, null, 63, null);
    }

    @NotNull
    public final Rect c() {
        return this.rect;
    }

    public final void h(@Nullable a<l0> aVar) {
        this.onCopyRequested = aVar;
    }

    public final void i(@Nullable a<l0> aVar) {
        this.onCutRequested = aVar;
    }

    public final void j(@Nullable a<l0> aVar) {
        this.onPasteRequested = aVar;
    }

    public final void k(@Nullable a<l0> aVar) {
        this.onSelectAllRequested = aVar;
    }

    public final void l(@NotNull Rect rect) {
        t.j(rect, "<set-?>");
        this.rect = rect;
    }

    public TextActionModeCallback(@Nullable a<l0> aVar, @NotNull Rect rect, @Nullable a<l0> aVar2, @Nullable a<l0> aVar3, @Nullable a<l0> aVar4, @Nullable a<l0> aVar5) {
        t.j(rect, "rect");
        this.onActionModeDestroy = aVar;
        this.rect = rect;
        this.onCopyRequested = aVar2;
        this.onPasteRequested = aVar3;
        this.onCutRequested = aVar4;
        this.onSelectAllRequested = aVar5;
    }

    private final void b(Menu menu, MenuItemOption menuItemOption, a<l0> aVar) {
        if (aVar != null && menu.findItem(menuItemOption.b()) == null) {
            a(menu, menuItemOption);
        } else {
            if (aVar != null || menu.findItem(menuItemOption.b()) == null) {
                return;
            }
            menu.removeItem(menuItemOption.b());
        }
    }

    public final void a(@NotNull Menu menu, @NotNull MenuItemOption item) {
        t.j(menu, "menu");
        t.j(item, "item");
        menu.add(0, item.b(), item.c(), item.d()).setShowAsAction(1);
    }

    public final boolean e(@Nullable ActionMode actionMode, @Nullable Menu menu) {
        if (menu == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        if (actionMode == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        if (this.onCopyRequested != null) {
            a(menu, MenuItemOption.Copy);
        }
        if (this.onPasteRequested != null) {
            a(menu, MenuItemOption.Paste);
        }
        if (this.onCutRequested != null) {
            a(menu, MenuItemOption.Cut);
        }
        if (this.onSelectAllRequested == null) {
            return true;
        }
        a(menu, MenuItemOption.SelectAll);
        return true;
    }

    public final void f() {
        a<l0> aVar = this.onActionModeDestroy;
        if (aVar != null) {
            aVar.invoke();
        }
    }

    public final boolean g(@Nullable ActionMode actionMode, @Nullable Menu menu) {
        if (actionMode == null || menu == null) {
            return false;
        }
        m(menu);
        return true;
    }

    @VisibleForTesting
    public final void m(@NotNull Menu menu) {
        t.j(menu, "menu");
        b(menu, MenuItemOption.Copy, this.onCopyRequested);
        b(menu, MenuItemOption.Paste, this.onPasteRequested);
        b(menu, MenuItemOption.Cut, this.onCutRequested);
        b(menu, MenuItemOption.SelectAll, this.onSelectAllRequested);
    }

    public /* synthetic */ TextActionModeCallback(a aVar, Rect rect, a aVar2, a aVar3, a aVar4, a aVar5, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : aVar, (i10 & 2) != 0 ? Rect.Companion.a() : rect, (i10 & 4) != 0 ? null : aVar2, (i10 & 8) != 0 ? null : aVar3, (i10 & 16) != 0 ? null : aVar4, (i10 & 32) != 0 ? null : aVar5);
    }

    public final boolean d(@Nullable ActionMode actionMode, @Nullable MenuItem menuItem) {
        t.g(menuItem);
        int itemId = menuItem.getItemId();
        if (itemId == MenuItemOption.Copy.b()) {
            a<l0> aVar = this.onCopyRequested;
            if (aVar != null) {
                aVar.invoke();
            }
        } else if (itemId == MenuItemOption.Paste.b()) {
            a<l0> aVar2 = this.onPasteRequested;
            if (aVar2 != null) {
                aVar2.invoke();
            }
        } else if (itemId == MenuItemOption.Cut.b()) {
            a<l0> aVar3 = this.onCutRequested;
            if (aVar3 != null) {
                aVar3.invoke();
            }
        } else if (itemId == MenuItemOption.SelectAll.b()) {
            a<l0> aVar4 = this.onSelectAllRequested;
            if (aVar4 != null) {
                aVar4.invoke();
            }
        } else {
            return false;
        }
        if (actionMode != null) {
            actionMode.finish();
            return true;
        }
        return true;
    }
}
