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
import com.narvii.media.color.DefaultBackgroundRecyclerView;
import com.narvii.widget.HSVColorPickerView;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentBackgroundColorBinding implements ViewBinding {

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    public final DefaultBackgroundRecyclerView defaultBackgroundPicker;

    @NonNull
    public final HSVColorPickerView hsvColorPicker;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentBackgroundColorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentBackgroundColorBinding bind(@NonNull View view) {
        int i10 = R.id.action_bar_overlay;
        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, i10);
        if (overlayListPlaceholder != null) {
            i10 = R.id.default_background_picker;
            DefaultBackgroundRecyclerView defaultBackgroundRecyclerView = (DefaultBackgroundRecyclerView) ViewBindings.a(view, i10);
            if (defaultBackgroundRecyclerView != null) {
                i10 = R.id.hsv_color_picker;
                HSVColorPickerView hSVColorPickerView = (HSVColorPickerView) ViewBindings.a(view, i10);
                if (hSVColorPickerView != null) {
                    return new FragmentBackgroundColorBinding((FrameLayout) view, overlayListPlaceholder, defaultBackgroundRecyclerView, hSVColorPickerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentBackgroundColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_background_color, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentBackgroundColorBinding(@NonNull FrameLayout frameLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull DefaultBackgroundRecyclerView defaultBackgroundRecyclerView, @NonNull HSVColorPickerView hSVColorPickerView) {
        this.rootView = frameLayout;
        this.actionBarOverlay = overlayListPlaceholder;
        this.defaultBackgroundPicker = defaultBackgroundRecyclerView;
        this.hsvColorPicker = hSVColorPickerView;
    }
}
