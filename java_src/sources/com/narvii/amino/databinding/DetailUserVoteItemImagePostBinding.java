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

/* JADX INFO: loaded from: classes9.dex */
public final class DetailUserVoteItemImagePostBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DetailUserVoteItemImagePostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailUserVoteItemImagePostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_user_vote_item_image_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailUserVoteItemImagePostBinding(@NonNull LinearLayout linearLayout, @NonNull View view) {
        this.rootView = linearLayout;
        this.divider = view;
    }

    @NonNull
    public static DetailUserVoteItemImagePostBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            return new DetailUserVoteItemImagePostBinding((LinearLayout) view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.divider)));
    }
}
