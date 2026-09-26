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

/* JADX INFO: loaded from: classes11.dex */
public final class DetailRepostPollItemBinding implements ViewBinding {

    @NonNull
    public final FeedRefPollBinding ref;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DetailRepostPollItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailRepostPollItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_repost_poll_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailRepostPollItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull FeedRefPollBinding feedRefPollBinding) {
        this.rootView = relativeLayout;
        this.ref = feedRefPollBinding;
    }

    @NonNull
    public static DetailRepostPollItemBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.ref);
        if (viewA != null) {
            return new DetailRepostPollItemBinding((RelativeLayout) view, FeedRefPollBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ref)));
    }
}
