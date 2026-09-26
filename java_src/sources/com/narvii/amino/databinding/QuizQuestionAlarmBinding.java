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
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class QuizQuestionAlarmBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView alarm;

    @NonNull
    public final View alarmBg;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static QuizQuestionAlarmBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizQuestionAlarmBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quiz_question_alarm, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizQuestionAlarmBinding(@NonNull FrameLayout frameLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull View view) {
        this.rootView = frameLayout;
        this.alarm = autoSizingTextView;
        this.alarmBg = view;
    }

    @NonNull
    public static QuizQuestionAlarmBinding bind(@NonNull View view) {
        int i10 = R.id.alarm;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.alarm);
        if (autoSizingTextView != null) {
            i10 = R.id.alarm_bg;
            View viewA = ViewBindings.a(view, R.id.alarm_bg);
            if (viewA != null) {
                return new QuizQuestionAlarmBinding((FrameLayout) view, autoSizingTextView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
