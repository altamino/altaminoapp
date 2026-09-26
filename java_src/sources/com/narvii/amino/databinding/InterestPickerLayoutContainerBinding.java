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

/* JADX INFO: loaded from: classes9.dex */
public final class InterestPickerLayoutContainerBinding implements ViewBinding {

    @NonNull
    public final FrameLayout frame;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static InterestPickerLayoutContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerLayoutContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_layout_container, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerLayoutContainerBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.frame = frameLayout2;
        this.masterBackground = frameLayout3;
    }

    @NonNull
    public static InterestPickerLayoutContainerBinding bind(@NonNull View view) {
        int i10 = R.id.frame;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.frame);
        if (frameLayout != null) {
            i10 = R.id.master_background;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.master_background);
            if (frameLayout2 != null) {
                return new InterestPickerLayoutContainerBinding((FrameLayout) view, frameLayout, frameLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
