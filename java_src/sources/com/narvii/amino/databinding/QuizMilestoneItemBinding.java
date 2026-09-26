package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.quiz.QuizMilestoneAvatarView;

/* JADX INFO: loaded from: classes5.dex */
public final class QuizMilestoneItemBinding implements ViewBinding {

    @NonNull
    public final TextView number;

    @NonNull
    public final QuizMilestoneAvatarView quizMilestoneAvatar;

    @NonNull
    public final View result;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final View whiteBarLeft;

    @NonNull
    public final View whiteBarRight;

    @NonNull
    public static QuizMilestoneItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizMilestoneItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quiz_milestone_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizMilestoneItemBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull QuizMilestoneAvatarView quizMilestoneAvatarView, @NonNull View view, @NonNull View view2, @NonNull View view3) {
        this.rootView = frameLayout;
        this.number = textView;
        this.quizMilestoneAvatar = quizMilestoneAvatarView;
        this.result = view;
        this.whiteBarLeft = view2;
        this.whiteBarRight = view3;
    }

    @NonNull
    public static QuizMilestoneItemBinding bind(@NonNull View view) {
        int i10 = R.id.number;
        TextView textView = (TextView) ViewBindings.a(view, R.id.number);
        if (textView != null) {
            i10 = R.id.quiz_milestone_avatar;
            QuizMilestoneAvatarView quizMilestoneAvatarView = (QuizMilestoneAvatarView) ViewBindings.a(view, R.id.quiz_milestone_avatar);
            if (quizMilestoneAvatarView != null) {
                i10 = R.id.result;
                View viewA = ViewBindings.a(view, R.id.result);
                if (viewA != null) {
                    i10 = R.id.white_bar_left;
                    View viewA2 = ViewBindings.a(view, R.id.white_bar_left);
                    if (viewA2 != null) {
                        i10 = R.id.white_bar_right;
                        View viewA3 = ViewBindings.a(view, R.id.white_bar_right);
                        if (viewA3 != null) {
                            return new QuizMilestoneItemBinding((FrameLayout) view, textView, quizMilestoneAvatarView, viewA, viewA2, viewA3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
