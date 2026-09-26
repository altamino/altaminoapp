package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountBackgroundBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurLayout nvRealtimeBlur;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static AccountBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_background, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountBackgroundBinding(@NonNull FrameLayout frameLayout, @NonNull RealtimeBlurLayout realtimeBlurLayout) {
        this.rootView = frameLayout;
        this.nvRealtimeBlur = realtimeBlurLayout;
    }

    @NonNull
    public static AccountBackgroundBinding bind(@NonNull View view) {
        RealtimeBlurLayout realtimeBlurLayout = (RealtimeBlurLayout) ViewBindings.a(view, R.id.nv_realtime_blur);
        if (realtimeBlurLayout != null) {
            return new AccountBackgroundBinding((FrameLayout) view, realtimeBlurLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.nv_realtime_blur)));
    }
}
