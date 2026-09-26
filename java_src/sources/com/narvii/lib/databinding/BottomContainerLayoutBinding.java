package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.BottomDrawerContainer;

/* JADX INFO: loaded from: classes8.dex */
public final class BottomContainerLayoutBinding implements ViewBinding {

    @NonNull
    public final BottomDrawerContainer drawerBottomContainer;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static BottomContainerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BottomContainerLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.drawer_bottom_container;
        BottomDrawerContainer bottomDrawerContainer = (BottomDrawerContainer) ViewBindings.a(view, i10);
        if (bottomDrawerContainer != null) {
            return new BottomContainerLayoutBinding((FrameLayout) view, bottomDrawerContainer);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static BottomContainerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bottom_container_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BottomContainerLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull BottomDrawerContainer bottomDrawerContainer) {
        this.rootView = frameLayout;
        this.drawerBottomContainer = bottomDrawerContainer;
    }
}
