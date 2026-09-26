package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class StoryTopicViewSmallBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public static StoryTopicViewSmallBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryTopicViewSmallBinding bind(@NonNull View view) {
        if (view != null) {
            return new StoryTopicViewSmallBinding((TextView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static StoryTopicViewSmallBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_topic_view_small, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryTopicViewSmallBinding(@NonNull TextView textView) {
        this.rootView = textView;
    }
}
