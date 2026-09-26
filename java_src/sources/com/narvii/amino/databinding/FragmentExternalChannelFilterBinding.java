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
import com.narvii.widget.PopupBubble;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentExternalChannelFilterBinding implements ViewBinding {

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final PopupBubble popupBubble;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentExternalChannelFilterBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.popup_bubble;
        PopupBubble popupBubble = (PopupBubble) ViewBindings.a(view, R.id.popup_bubble);
        if (popupBubble != null) {
            i10 = android.R.id.progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
            if (spinningView != null) {
                return new FragmentExternalChannelFilterBinding(frameLayout, frameLayout, popupBubble, spinningView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentExternalChannelFilterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentExternalChannelFilterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_external_channel_filter, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentExternalChannelFilterBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull PopupBubble popupBubble, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.listFrame = frameLayout2;
        this.popupBubble = popupBubble;
        this.progress = spinningView;
    }
}
