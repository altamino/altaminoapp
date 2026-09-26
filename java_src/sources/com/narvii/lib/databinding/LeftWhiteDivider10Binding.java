package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class LeftWhiteDivider10Binding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LeftWhiteDivider10Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LeftWhiteDivider10Binding bind(@NonNull View view) {
        if (view != null) {
            return new LeftWhiteDivider10Binding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static LeftWhiteDivider10Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.left_white_divider_10, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LeftWhiteDivider10Binding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }
}
