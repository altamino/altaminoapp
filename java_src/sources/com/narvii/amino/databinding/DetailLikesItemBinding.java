package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class DetailLikesItemBinding implements ViewBinding {

    @NonNull
    public final GridLayout grid;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DetailLikesItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailLikesItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_likes_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailLikesItemBinding(@NonNull LinearLayout linearLayout, @NonNull GridLayout gridLayout) {
        this.rootView = linearLayout;
        this.grid = gridLayout;
    }

    @NonNull
    public static DetailLikesItemBinding bind(@NonNull View view) {
        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.grid);
        if (gridLayout != null) {
            return new DetailLikesItemBinding((LinearLayout) view, gridLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.grid)));
    }
}
