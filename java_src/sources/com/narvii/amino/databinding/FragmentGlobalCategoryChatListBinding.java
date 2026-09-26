package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentGlobalCategoryChatListBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentGlobalCategoryChatListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentGlobalCategoryChatListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_global_category_chat_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentGlobalCategoryChatListBinding(@NonNull FrameLayout frameLayout, @NonNull RealtimeBlurView realtimeBlurView) {
        this.rootView = frameLayout;
        this.blur = realtimeBlurView;
    }

    @NonNull
    public static FragmentGlobalCategoryChatListBinding bind(@NonNull View view) {
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
        if (realtimeBlurView != null) {
            return new FragmentGlobalCategoryChatListBinding((FrameLayout) view, realtimeBlurView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.blur)));
    }
}
