package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.influencer.StoryInfluencerPostIndicator;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes7.dex */
public final class InfluencerStoryIndicatorBinding implements ViewBinding {

    @NonNull
    public final ImageView check;

    @NonNull
    public final TextView fansOnly;

    @NonNull
    public final TintButton influencerLock;

    @NonNull
    public final StoryInfluencerPostIndicator influencerPostLockIndicator;

    @NonNull
    private final StoryInfluencerPostIndicator rootView;

    @NonNull
    public final FrameLayout toggleLayout;

    @NonNull
    public static InfluencerStoryIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StoryInfluencerPostIndicator getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InfluencerStoryIndicatorBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.fans_only;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.influencer_lock;
                TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
                if (tintButton != null) {
                    StoryInfluencerPostIndicator storyInfluencerPostIndicator = (StoryInfluencerPostIndicator) view;
                    i10 = R.id.toggle_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                    if (frameLayout != null) {
                        return new InfluencerStoryIndicatorBinding(storyInfluencerPostIndicator, imageView, textView, tintButton, storyInfluencerPostIndicator, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static InfluencerStoryIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.influencer_story_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InfluencerStoryIndicatorBinding(@NonNull StoryInfluencerPostIndicator storyInfluencerPostIndicator, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull StoryInfluencerPostIndicator storyInfluencerPostIndicator2, @NonNull FrameLayout frameLayout) {
        this.rootView = storyInfluencerPostIndicator;
        this.check = imageView;
        this.fansOnly = textView;
        this.influencerLock = tintButton;
        this.influencerPostLockIndicator = storyInfluencerPostIndicator2;
        this.toggleLayout = frameLayout;
    }
}
