package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class IntegrationActivityFavoritesBinding implements ViewBinding {

    @NonNull
    public final FragmentContainerView fragmentContainer;

    @NonNull
    private final FragmentContainerView rootView;

    @NonNull
    public static IntegrationActivityFavoritesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FragmentContainerView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IntegrationActivityFavoritesBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FragmentContainerView fragmentContainerView = (FragmentContainerView) view;
        return new IntegrationActivityFavoritesBinding(fragmentContainerView, fragmentContainerView);
    }

    @NonNull
    public static IntegrationActivityFavoritesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.integration_activity_favorites, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IntegrationActivityFavoritesBinding(@NonNull FragmentContainerView fragmentContainerView, @NonNull FragmentContainerView fragmentContainerView2) {
        this.rootView = fragmentContainerView;
        this.fragmentContainer = fragmentContainerView2;
    }
}
