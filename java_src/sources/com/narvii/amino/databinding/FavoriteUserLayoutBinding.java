package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;
import com.narvii.widget.recycleview.NVRichRecycleView;

/* JADX INFO: loaded from: classes11.dex */
public final class FavoriteUserLayoutBinding implements ViewBinding {

    @NonNull
    public final TintButton gotoArrow;

    @NonNull
    public final LinearLayout gotoArrowLayout;

    @NonNull
    public final NVRichRecycleView recycleLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FavoriteUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FavoriteUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.favorite_user_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FavoriteUserLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull NVRichRecycleView nVRichRecycleView) {
        this.rootView = linearLayout;
        this.gotoArrow = tintButton;
        this.gotoArrowLayout = linearLayout2;
        this.recycleLayout = nVRichRecycleView;
    }

    @NonNull
    public static FavoriteUserLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.goto_arrow;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.goto_arrow);
        if (tintButton != null) {
            i10 = R.id.goto_arrow_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.goto_arrow_layout);
            if (linearLayout != null) {
                i10 = R.id.recycle_layout;
                NVRichRecycleView nVRichRecycleView = (NVRichRecycleView) ViewBindings.a(view, R.id.recycle_layout);
                if (nVRichRecycleView != null) {
                    return new FavoriteUserLayoutBinding((LinearLayout) view, tintButton, linearLayout, nVRichRecycleView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
