package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes8.dex */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {
    private final int mMarginPx;

    public MarginPageTransformer(@Px int i10) {
        Preconditions.g(i10, "Margin must be non-negative");
        this.mMarginPx = i10;
    }

    private ViewPager2 a(@NonNull View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f) {
        ViewPager2 viewPager2A = a(view);
        float f6 = this.mMarginPx * f;
        if (viewPager2A.getOrientation() == 0) {
            if (viewPager2A.e()) {
                f6 = -f6;
            }
            view.setTranslationX(f6);
            return;
        }
        view.setTranslationY(f6);
    }
}
