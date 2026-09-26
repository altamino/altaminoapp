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
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes11.dex */
public final class MediaPickerGalleryLayoutBinding implements ViewBinding {

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    public final NVViewPager pager;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static MediaPickerGalleryLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaPickerGalleryLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.action_bar_overlay;
        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, i10);
        if (overlayListPlaceholder != null) {
            i10 = R.id.pager;
            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, i10);
            if (nVViewPager != null) {
                return new MediaPickerGalleryLayoutBinding((FrameLayout) view, overlayListPlaceholder, nVViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaPickerGalleryLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_picker_gallery_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaPickerGalleryLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.actionBarOverlay = overlayListPlaceholder;
        this.pager = nVViewPager;
    }
}
