package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class DetailFrameBinding implements ViewBinding {

    @NonNull
    public final FrameLayout FrameLayoutRoot;

    @NonNull
    public final FrameLayout bottomContainer;

    @NonNull
    public final DetailDisabledBarBinding disabledBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DetailFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_frame, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailFrameBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull DetailDisabledBarBinding detailDisabledBarBinding) {
        this.rootView = linearLayout;
        this.FrameLayoutRoot = frameLayout;
        this.bottomContainer = frameLayout2;
        this.disabledBar = detailDisabledBarBinding;
    }

    @NonNull
    public static DetailFrameBinding bind(@NonNull View view) {
        int i10 = R.id._frame_layout_root;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id._frame_layout_root);
        if (frameLayout != null) {
            i10 = R.id.bottom_container;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.bottom_container);
            if (frameLayout2 != null) {
                i10 = R.id.disabled_bar;
                View viewA = ViewBindings.a(view, R.id.disabled_bar);
                if (viewA != null) {
                    return new DetailFrameBinding((LinearLayout) view, frameLayout, frameLayout2, DetailDisabledBarBinding.bind(viewA));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
