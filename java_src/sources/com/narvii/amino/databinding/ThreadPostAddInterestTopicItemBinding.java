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
import com.narvii.suggest.interest.ThreadPostAddTopicView;

/* JADX INFO: loaded from: classes6.dex */
public final class ThreadPostAddInterestTopicItemBinding implements ViewBinding {

    @NonNull
    public final ThreadPostAddTopicView interestItemView;

    @NonNull
    private final ThreadPostAddTopicView rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ThreadPostAddInterestTopicItemBinding bind(@NonNull View view) {
        ThreadPostAddTopicView threadPostAddTopicView = (ThreadPostAddTopicView) view;
        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
        if (textView != null) {
            return new ThreadPostAddInterestTopicItemBinding(threadPostAddTopicView, threadPostAddTopicView, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }

    @NonNull
    public static ThreadPostAddInterestTopicItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ThreadPostAddTopicView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadPostAddInterestTopicItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_post_add_interest_topic_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadPostAddInterestTopicItemBinding(@NonNull ThreadPostAddTopicView threadPostAddTopicView, @NonNull ThreadPostAddTopicView threadPostAddTopicView2, @NonNull TextView textView) {
        this.rootView = threadPostAddTopicView;
        this.interestItemView = threadPostAddTopicView2;
        this.text = textView;
    }
}
