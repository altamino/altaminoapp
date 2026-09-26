package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class StoryTopicViewWithBackgroundBinding implements ViewBinding {

    @NonNull
    public final NVImageView background;

    @NonNull
    public final NVImageView overlay;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static StoryTopicViewWithBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryTopicViewWithBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_topic_view_with_background, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryTopicViewWithBackgroundBinding(@NonNull FlexLayout flexLayout, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.background = nVImageView;
        this.overlay = nVImageView2;
        this.text = textView;
    }

    @NonNull
    public static StoryTopicViewWithBackgroundBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.background);
        if (nVImageView != null) {
            i10 = R.id.overlay;
            NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.overlay);
            if (nVImageView2 != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                if (textView != null) {
                    return new StoryTopicViewWithBackgroundBinding((FlexLayout) view, nVImageView, nVImageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
