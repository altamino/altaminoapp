package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class QuizMilestoneAvatarBinding implements ViewBinding {

    @NonNull
    public final TintButton milestone;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizMilestoneAvatarBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.quiz_milestone_avatar, viewGroup);
        return bind(viewGroup);
    }

    private QuizMilestoneAvatarBinding(@NonNull View view, @NonNull TintButton tintButton) {
        this.rootView = view;
        this.milestone = tintButton;
    }

    @NonNull
    public static QuizMilestoneAvatarBinding bind(@NonNull View view) {
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.milestone);
        if (tintButton != null) {
            return new QuizMilestoneAvatarBinding(view, tintButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.milestone)));
    }
}
