package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public final class FlagQuizzesRelatedPageBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FlagQuizzesRelatedPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagQuizzesRelatedPageBinding bind(@NonNull View view) {
        if (view != null) {
            return new FlagQuizzesRelatedPageBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static FlagQuizzesRelatedPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_quizzes_related_page, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagQuizzesRelatedPageBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }
}
