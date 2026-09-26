package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DetailRepostItemItemBinding implements ViewBinding {

    @NonNull
    public final FeedRefItemBinding ref;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DetailRepostItemItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailRepostItemItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_repost_item_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailRepostItemItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull FeedRefItemBinding feedRefItemBinding) {
        this.rootView = relativeLayout;
        this.ref = feedRefItemBinding;
    }

    @NonNull
    public static DetailRepostItemItemBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.ref);
        if (viewA != null) {
            return new DetailRepostItemItemBinding((RelativeLayout) view, FeedRefItemBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ref)));
    }
}
