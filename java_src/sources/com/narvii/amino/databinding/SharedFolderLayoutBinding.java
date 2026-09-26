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
import com.narvii.list.overlay.OverlayListPlaceholder;

/* JADX INFO: loaded from: classes7.dex */
public final class SharedFolderLayoutBinding implements ViewBinding {

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static SharedFolderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedFolderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_folder_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedFolderLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder) {
        this.rootView = frameLayout;
        this.actionBarOverlay = overlayListPlaceholder;
    }

    @NonNull
    public static SharedFolderLayoutBinding bind(@NonNull View view) {
        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.action_bar_overlay);
        if (overlayListPlaceholder != null) {
            return new SharedFolderLayoutBinding((FrameLayout) view, overlayListPlaceholder);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.action_bar_overlay)));
    }
}
