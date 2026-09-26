package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {
    private final LinearLayoutManager mLayoutManager;
    private ViewPager2.PageTransformer mPageTransformer;

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void a(int i10) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void c(int i10) {
    }

    ViewPager2.PageTransformer d() {
        return this.mPageTransformer;
    }

    void e(@Nullable ViewPager2.PageTransformer pageTransformer) {
        this.mPageTransformer = pageTransformer;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void b(int i10, float f, int i11) {
        if (this.mPageTransformer == null) {
            return;
        }
        float f6 = -f;
        for (int i12 = 0; i12 < this.mLayoutManager.getChildCount(); i12++) {
            View childAt = this.mLayoutManager.getChildAt(i12);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i12), Integer.valueOf(this.mLayoutManager.getChildCount())));
            }
            this.mPageTransformer.transformPage(childAt, (this.mLayoutManager.getPosition(childAt) - i10) + f6);
        }
    }

    PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }
}
