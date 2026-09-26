package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LibStoryTopicViewBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static LibStoryTopicViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LibStoryTopicViewBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new LibStoryTopicViewBinding(textView, textView);
    }

    @NonNull
    public static LibStoryTopicViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.lib_story_topic_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LibStoryTopicViewBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.text = textView2;
    }
}
