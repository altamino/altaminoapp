package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentQuizQuestionFlagModeBinding implements ViewBinding {

    @NonNull
    public final FrameLayout flagContainer;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentQuizQuestionFlagModeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentQuizQuestionFlagModeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_quiz_question_flag_mode, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentQuizQuestionFlagModeBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.flagContainer = frameLayout2;
    }

    @NonNull
    public static FragmentQuizQuestionFlagModeBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.flag_container);
        if (frameLayout != null) {
            return new FragmentQuizQuestionFlagModeBinding((FrameLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.flag_container)));
    }
}
