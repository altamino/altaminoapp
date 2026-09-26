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

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentMasterCreateTemplateBinding implements ViewBinding {

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentMasterCreateTemplateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMasterCreateTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_master_create_template, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMasterCreateTemplateBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.masterBackground = frameLayout2;
    }

    @NonNull
    public static FragmentMasterCreateTemplateBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
        if (frameLayout != null) {
            return new FragmentMasterCreateTemplateBinding((FrameLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.master_background)));
    }
}
