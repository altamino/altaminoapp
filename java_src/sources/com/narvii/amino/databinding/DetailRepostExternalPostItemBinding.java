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

/* JADX INFO: loaded from: classes3.dex */
public final class DetailRepostExternalPostItemBinding implements ViewBinding {

    @NonNull
    public final FeedRefExternalPostBinding ref;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DetailRepostExternalPostItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailRepostExternalPostItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_repost_external_post_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailRepostExternalPostItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull FeedRefExternalPostBinding feedRefExternalPostBinding) {
        this.rootView = relativeLayout;
        this.ref = feedRefExternalPostBinding;
    }

    @NonNull
    public static DetailRepostExternalPostItemBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.ref);
        if (viewA != null) {
            return new DetailRepostExternalPostItemBinding((RelativeLayout) view, FeedRefExternalPostBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ref)));
    }
}
