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
import com.narvii.list.overlay.OverlayLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentMoodListBinding implements ViewBinding {

    @NonNull
    public final ListHoverFrame hoverLayout;

    @NonNull
    public final OverlayLayout overlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentMoodListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMoodListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_mood_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMoodListBinding(@NonNull FrameLayout frameLayout, @NonNull ListHoverFrame listHoverFrame, @NonNull OverlayLayout overlayLayout) {
        this.rootView = frameLayout;
        this.hoverLayout = listHoverFrame;
        this.overlay = overlayLayout;
    }

    @NonNull
    public static FragmentMoodListBinding bind(@NonNull View view) {
        int i10 = R.id.hover_layout;
        ListHoverFrame listHoverFrame = (ListHoverFrame) ViewBindings.a(view, R.id.hover_layout);
        if (listHoverFrame != null) {
            i10 = R.id.overlay;
            OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.overlay);
            if (overlayLayout != null) {
                return new FragmentMoodListBinding((FrameLayout) view, listHoverFrame, overlayLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
