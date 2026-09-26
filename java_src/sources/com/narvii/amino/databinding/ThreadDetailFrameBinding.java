package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.widget.NVListOverlay;

/* JADX INFO: loaded from: classes10.dex */
public final class ThreadDetailFrameBinding implements ViewBinding {

    @NonNull
    public final FrameLayout backgroundPickerContainer;

    @NonNull
    public final FrameLayout bottomContainer;

    @NonNull
    public final DetailDisabledBarBinding disabledBar;

    @NonNull
    public final NVListOverlay fakeActionbar;

    @NonNull
    public final OverlayLayout listHeader;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ThreadDetailFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadDetailFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_detail_frame, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadDetailFrameBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull DetailDisabledBarBinding detailDisabledBarBinding, @NonNull NVListOverlay nVListOverlay, @NonNull OverlayLayout overlayLayout) {
        this.rootView = linearLayout;
        this.backgroundPickerContainer = frameLayout;
        this.bottomContainer = frameLayout2;
        this.disabledBar = detailDisabledBarBinding;
        this.fakeActionbar = nVListOverlay;
        this.listHeader = overlayLayout;
    }

    @NonNull
    public static ThreadDetailFrameBinding bind(@NonNull View view) {
        int i10 = R.id.background_picker_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.background_picker_container);
        if (frameLayout != null) {
            i10 = R.id.bottom_container;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.bottom_container);
            if (frameLayout2 != null) {
                i10 = R.id.disabled_bar;
                View viewA = ViewBindings.a(view, R.id.disabled_bar);
                if (viewA != null) {
                    DetailDisabledBarBinding detailDisabledBarBindingBind = DetailDisabledBarBinding.bind(viewA);
                    i10 = R.id.fake_actionbar;
                    NVListOverlay nVListOverlay = (NVListOverlay) ViewBindings.a(view, R.id.fake_actionbar);
                    if (nVListOverlay != null) {
                        i10 = R.id.list_header;
                        OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.list_header);
                        if (overlayLayout != null) {
                            return new ThreadDetailFrameBinding((LinearLayout) view, frameLayout, frameLayout2, detailDisabledBarBindingBind, nVListOverlay, overlayLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
