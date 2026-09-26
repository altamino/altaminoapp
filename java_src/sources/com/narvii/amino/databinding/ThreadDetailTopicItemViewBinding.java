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
import com.narvii.story.widgets.StoryTopicView;

/* JADX INFO: loaded from: classes11.dex */
public final class ThreadDetailTopicItemViewBinding implements ViewBinding {

    @NonNull
    public final StoryTopicView interestItemView;

    @NonNull
    private final StoryTopicView rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ThreadDetailTopicItemViewBinding bind(@NonNull View view) {
        StoryTopicView storyTopicView = (StoryTopicView) view;
        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
        if (textView != null) {
            return new ThreadDetailTopicItemViewBinding(storyTopicView, storyTopicView, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }

    @NonNull
    public static ThreadDetailTopicItemViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StoryTopicView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadDetailTopicItemViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_detail_topic_item_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadDetailTopicItemViewBinding(@NonNull StoryTopicView storyTopicView, @NonNull StoryTopicView storyTopicView2, @NonNull TextView textView) {
        this.rootView = storyTopicView;
        this.interestItemView = storyTopicView2;
        this.text = textView;
    }
}
