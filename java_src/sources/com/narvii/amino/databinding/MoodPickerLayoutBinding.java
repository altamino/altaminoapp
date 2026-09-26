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
import com.narvii.list.ListHoverFrame;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.NVListView;

/* JADX INFO: loaded from: classes9.dex */
public final class MoodPickerLayoutBinding implements ViewBinding {

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    public final ListHoverFrame hoverLayout;

    @NonNull
    public final NVListView list;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static MoodPickerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoodPickerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.mood_picker_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoodPickerLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull ListHoverFrame listHoverFrame, @NonNull NVListView nVListView) {
        this.rootView = frameLayout;
        this.actionBarOverlay = overlayListPlaceholder;
        this.hoverLayout = listHoverFrame;
        this.list = nVListView;
    }

    @NonNull
    public static MoodPickerLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.action_bar_overlay;
        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.action_bar_overlay);
        if (overlayListPlaceholder != null) {
            i10 = R.id.hover_layout;
            ListHoverFrame listHoverFrame = (ListHoverFrame) ViewBindings.a(view, R.id.hover_layout);
            if (listHoverFrame != null) {
                i10 = R.id.list;
                NVListView nVListView = (NVListView) ViewBindings.a(view, R.id.list);
                if (nVListView != null) {
                    return new MoodPickerLayoutBinding((FrameLayout) view, overlayListPlaceholder, listHoverFrame, nVListView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
