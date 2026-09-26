package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class MenuKt$iterator$1 implements Iterator<MenuItem>, f8.a {
    final /* synthetic */ Menu $this_iterator;
    private int index;

    MenuKt$iterator$1(Menu menu) {
        this.$this_iterator = menu;
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public MenuItem next() {
        Menu menu = this.$this_iterator;
        int i10 = this.index;
        this.index = i10 + 1;
        MenuItem item = menu.getItem(i10);
        if (item != null) {
            return item;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_iterator.size();
    }

    @Override // java.util.Iterator
    public void remove() {
        w7.l0 l0Var;
        Menu menu = this.$this_iterator;
        int i10 = this.index - 1;
        this.index = i10;
        MenuItem item = menu.getItem(i10);
        if (item != null) {
            kotlin.jvm.internal.t.i(item, "getItem(index)");
            menu.removeItem(item.getItemId());
            l0Var = w7.l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            throw new IndexOutOfBoundsException();
        }
    }
}
