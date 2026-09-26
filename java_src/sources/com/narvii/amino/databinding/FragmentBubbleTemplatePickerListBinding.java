package com.narvii.amino.databinding;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentBubbleTemplatePickerListBinding implements ViewBinding {

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentBubbleTemplatePickerListBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
        if (spinningView != null) {
            return new FragmentBubbleTemplatePickerListBinding(frameLayout, frameLayout, spinningView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.progress)));
    }

    @NonNull
    public static FragmentBubbleTemplatePickerListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentBubbleTemplatePickerListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(com.narvii.amino.master.R.layout.fragment_bubble_template_picker_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentBubbleTemplatePickerListBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.listFrame = frameLayout2;
        this.progress = spinningView;
    }
}
