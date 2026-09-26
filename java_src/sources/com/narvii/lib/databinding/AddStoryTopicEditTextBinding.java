package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.AutoFocusDisabledEditText;

/* JADX INFO: loaded from: classes5.dex */
public final class AddStoryTopicEditTextBinding implements ViewBinding {

    @NonNull
    public final AutoFocusDisabledEditText addTag;

    @NonNull
    private final AutoFocusDisabledEditText rootView;

    @NonNull
    public static AddStoryTopicEditTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AutoFocusDisabledEditText getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AddStoryTopicEditTextBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AutoFocusDisabledEditText autoFocusDisabledEditText = (AutoFocusDisabledEditText) view;
        return new AddStoryTopicEditTextBinding(autoFocusDisabledEditText, autoFocusDisabledEditText);
    }

    @NonNull
    public static AddStoryTopicEditTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.add_story_topic_edit_text, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AddStoryTopicEditTextBinding(@NonNull AutoFocusDisabledEditText autoFocusDisabledEditText, @NonNull AutoFocusDisabledEditText autoFocusDisabledEditText2) {
        this.rootView = autoFocusDisabledEditText;
        this.addTag = autoFocusDisabledEditText2;
    }
}
