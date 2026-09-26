package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewGroupKt$iterator$1 implements Iterator<View>, f8.a {
    final /* synthetic */ ViewGroup $this_iterator;
    private int index;

    ViewGroupKt$iterator$1(ViewGroup viewGroup) {
        this.$this_iterator = viewGroup;
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public View next() {
        ViewGroup viewGroup = this.$this_iterator;
        int i10 = this.index;
        this.index = i10 + 1;
        View childAt = viewGroup.getChildAt(i10);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_iterator.getChildCount();
    }

    @Override // java.util.Iterator
    public void remove() {
        ViewGroup viewGroup = this.$this_iterator;
        int i10 = this.index - 1;
        this.index = i10;
        viewGroup.removeViewAt(i10);
    }
}
