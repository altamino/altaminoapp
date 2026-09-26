package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;

/* JADX INFO: loaded from: classes10.dex */
class ItemTouchUIUtilImpl implements ItemTouchUIUtil {
    static final ItemTouchUIUtil INSTANCE = new ItemTouchUIUtilImpl();

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void a(@NonNull View view) {
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void d(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull View view, float f, float f6, int i10, boolean z6) {
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull View view, float f, float f6, int i10, boolean z6) {
        if (z6) {
            int i11 = R.id.item_touch_helper_previous_elevation;
            if (view.getTag(i11) == null) {
                Float fValueOf = Float.valueOf(ViewCompat.y(view));
                ViewCompat.C0(view, e(recyclerView, view) + 1.0f);
                view.setTag(i11, fValueOf);
            }
        }
        view.setTranslationX(f);
        view.setTranslationY(f6);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void c(@NonNull View view) {
        int i10 = R.id.item_touch_helper_previous_elevation;
        Object tag = view.getTag(i10);
        if (tag instanceof Float) {
            ViewCompat.C0(view, ((Float) tag).floatValue());
        }
        view.setTag(i10, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    ItemTouchUIUtilImpl() {
    }

    private static float e(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView.getChildAt(i10);
            if (childAt != view) {
                float fY = ViewCompat.y(childAt);
                if (fY > f) {
                    f = fY;
                }
            }
        }
        return f;
    }
}
