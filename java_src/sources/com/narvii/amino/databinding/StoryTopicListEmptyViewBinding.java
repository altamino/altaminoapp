package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class StoryTopicListEmptyViewBinding implements ViewBinding {

    @NonNull
    public final Button exploreTopicsButton;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static StoryTopicListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryTopicListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_topic_list_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryTopicListEmptyViewBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull Button button) {
        this.rootView = nVThemeLinearLayout;
        this.exploreTopicsButton = button;
    }

    @NonNull
    public static StoryTopicListEmptyViewBinding bind(@NonNull View view) {
        Button button = (Button) ViewBindings.a(view, R.id.explore_topics_button);
        if (button != null) {
            return new StoryTopicListEmptyViewBinding((NVThemeLinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.explore_topics_button)));
    }
}
