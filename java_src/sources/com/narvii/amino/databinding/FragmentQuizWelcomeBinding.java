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

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentQuizWelcomeBinding implements ViewBinding {

    @NonNull
    public final TextView countDown;

    @NonNull
    public final TextView countDownAnim;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentQuizWelcomeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentQuizWelcomeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_quiz_welcome, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentQuizWelcomeBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.countDown = textView;
        this.countDownAnim = textView2;
    }

    @NonNull
    public static FragmentQuizWelcomeBinding bind(@NonNull View view) {
        int i10 = R.id.count_down;
        TextView textView = (TextView) ViewBindings.a(view, R.id.count_down);
        if (textView != null) {
            i10 = R.id.count_down_anim;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.count_down_anim);
            if (textView2 != null) {
                return new FragmentQuizWelcomeBinding((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
