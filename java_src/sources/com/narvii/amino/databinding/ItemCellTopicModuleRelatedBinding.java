package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.topic.widgets.GeneralTopicCard;
import com.narvii.topic.widgets.TopicCardCoverView;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemCellTopicModuleRelatedBinding implements ViewBinding {

    @NonNull
    public final TopicCardCoverView imgContainer;

    @NonNull
    private final GeneralTopicCard rootView;

    @NonNull
    public final GeneralTopicCard storyTopicCardView;

    @NonNull
    public final StoryTopicView topicView;

    @NonNull
    public static ItemCellTopicModuleRelatedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public GeneralTopicCard getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellTopicModuleRelatedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_topic_module_related, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellTopicModuleRelatedBinding(@NonNull GeneralTopicCard generalTopicCard, @NonNull TopicCardCoverView topicCardCoverView, @NonNull GeneralTopicCard generalTopicCard2, @NonNull StoryTopicView storyTopicView) {
        this.rootView = generalTopicCard;
        this.imgContainer = topicCardCoverView;
        this.storyTopicCardView = generalTopicCard2;
        this.topicView = storyTopicView;
    }

    @NonNull
    public static ItemCellTopicModuleRelatedBinding bind(@NonNull View view) {
        int i10 = R.id.img_container;
        TopicCardCoverView topicCardCoverView = (TopicCardCoverView) ViewBindings.a(view, R.id.img_container);
        if (topicCardCoverView != null) {
            GeneralTopicCard generalTopicCard = (GeneralTopicCard) view;
            StoryTopicView storyTopicView = (StoryTopicView) ViewBindings.a(view, R.id.topic_view);
            if (storyTopicView != null) {
                return new ItemCellTopicModuleRelatedBinding(generalTopicCard, topicCardCoverView, generalTopicCard, storyTopicView);
            }
            i10 = R.id.topic_view;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
