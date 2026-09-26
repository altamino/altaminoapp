package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.master.search.widgets.TopicCardView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemCellTopicSearchBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TopicCardView topicLayout;

    @NonNull
    public static ItemCellTopicSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellTopicSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_topic_search, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellTopicSearchBinding(@NonNull FrameLayout frameLayout, @NonNull TopicCardView topicCardView) {
        this.rootView = frameLayout;
        this.topicLayout = topicCardView;
    }

    @NonNull
    public static ItemCellTopicSearchBinding bind(@NonNull View view) {
        TopicCardView topicCardView = (TopicCardView) ViewBindings.a(view, R.id.topic_layout);
        if (topicCardView != null) {
            return new ItemCellTopicSearchBinding((FrameLayout) view, topicCardView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.topic_layout)));
    }
}
