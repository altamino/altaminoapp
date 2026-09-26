package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class QuizzesResultShareLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout quizzesReplay;

    @NonNull
    public final LinearLayout quizzesShare;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static QuizzesResultShareLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizzesResultShareLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quizzes_result_share_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizzesResultShareLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.quizzesReplay = linearLayout2;
        this.quizzesShare = linearLayout3;
    }

    @NonNull
    public static QuizzesResultShareLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.quizzes_replay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.quizzes_replay);
        if (linearLayout != null) {
            i10 = R.id.quizzes_share;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.quizzes_share);
            if (linearLayout2 != null) {
                return new QuizzesResultShareLayoutBinding((LinearLayout) view, linearLayout, linearLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
