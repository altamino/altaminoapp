package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class StoryFeedListVideoControllerBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static StoryFeedListVideoControllerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryFeedListVideoControllerBinding bind(@NonNull View view) {
        if (view != null) {
            return new StoryFeedListVideoControllerBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static StoryFeedListVideoControllerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_feed_list_video_controller, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryFeedListVideoControllerBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }
}
