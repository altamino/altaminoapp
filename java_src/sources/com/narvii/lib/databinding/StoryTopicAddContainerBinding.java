package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.TopicEditFlowView;

/* JADX INFO: loaded from: classes9.dex */
public final class StoryTopicAddContainerBinding implements ViewBinding {

    @NonNull
    public final TopicEditFlowView editTopicFlowLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static StoryTopicAddContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryTopicAddContainerBinding bind(@NonNull View view) {
        int i10 = R.id.edit_topic_flow_layout;
        TopicEditFlowView topicEditFlowView = (TopicEditFlowView) ViewBindings.a(view, i10);
        if (topicEditFlowView != null) {
            return new StoryTopicAddContainerBinding((FrameLayout) view, topicEditFlowView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static StoryTopicAddContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_topic_add_container, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryTopicAddContainerBinding(@NonNull FrameLayout frameLayout, @NonNull TopicEditFlowView topicEditFlowView) {
        this.rootView = frameLayout;
        this.editTopicFlowLayout = topicEditFlowView;
    }
}
