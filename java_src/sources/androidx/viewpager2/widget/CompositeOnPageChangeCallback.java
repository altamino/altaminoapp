package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Px;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
final class CompositeOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {

    @NonNull
    private final List<ViewPager2.OnPageChangeCallback> mCallbacks;

    private void f(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void a(int i10) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().a(i10);
            }
        } catch (ConcurrentModificationException e) {
            f(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void b(int i10, float f, @Px int i11) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().b(i10, f, i11);
            }
        } catch (ConcurrentModificationException e) {
            f(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void c(int i10) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().c(i10);
            }
        } catch (ConcurrentModificationException e) {
            f(e);
        }
    }

    void d(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallbacks.add(onPageChangeCallback);
    }

    void e(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallbacks.remove(onPageChangeCallback);
    }

    CompositeOnPageChangeCallback(int i10) {
        this.mCallbacks = new ArrayList(i10);
    }
}
