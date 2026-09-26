package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.suggest.interest.ThreadPostTopicView;

/* JADX INFO: loaded from: classes7.dex */
public final class ThreadPostInterestTopicItemBinding implements ViewBinding {

    @NonNull
    public final ThreadPostTopicView interestItemView;

    @NonNull
    private final ThreadPostTopicView rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ThreadPostInterestTopicItemBinding bind(@NonNull View view) {
        ThreadPostTopicView threadPostTopicView = (ThreadPostTopicView) view;
        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
        if (textView != null) {
            return new ThreadPostInterestTopicItemBinding(threadPostTopicView, threadPostTopicView, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }

    @NonNull
    public static ThreadPostInterestTopicItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ThreadPostTopicView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadPostInterestTopicItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_post_interest_topic_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadPostInterestTopicItemBinding(@NonNull ThreadPostTopicView threadPostTopicView, @NonNull ThreadPostTopicView threadPostTopicView2, @NonNull TextView textView) {
        this.rootView = threadPostTopicView;
        this.interestItemView = threadPostTopicView2;
        this.text = textView;
    }
}
