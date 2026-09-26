package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class MenuKt$children$1 implements kotlin.sequences.g<MenuItem> {
    final /* synthetic */ Menu $this_children;

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<MenuItem> iterator() {
        return MenuKt.a(this.$this_children);
    }
}
