package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class StoryTopicViewMatchedBinding implements ViewBinding {

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView tvTopic;

    @NonNull
    public static StoryTopicViewMatchedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryTopicViewMatchedBinding bind(@NonNull View view) {
        int i10 = R.id.tv_topic;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            return new StoryTopicViewMatchedBinding((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static StoryTopicViewMatchedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_topic_view_matched, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryTopicViewMatchedBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.tvTopic = textView;
    }
}
