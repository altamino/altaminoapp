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
public final class DetailRepostQuizItemBinding implements ViewBinding {

    @NonNull
    public final FeedRefQuizBinding ref;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DetailRepostQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailRepostQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_repost_quiz_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailRepostQuizItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull FeedRefQuizBinding feedRefQuizBinding) {
        this.rootView = relativeLayout;
        this.ref = feedRefQuizBinding;
    }

    @NonNull
    public static DetailRepostQuizItemBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.ref);
        if (viewA != null) {
            return new DetailRepostQuizItemBinding((RelativeLayout) view, FeedRefQuizBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ref)));
    }
}
