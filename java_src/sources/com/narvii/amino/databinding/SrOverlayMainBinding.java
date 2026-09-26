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
import com.narvii.chat.video.overlay.AvChatMessageListView;

/* JADX INFO: loaded from: classes7.dex */
public final class SrOverlayMainBinding implements ViewBinding {

    @NonNull
    public final FrameLayout chatMessageContainer;

    @NonNull
    public final AvChatMessageListView chatRecycle;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static SrOverlayMainBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        AvChatMessageListView avChatMessageListView = (AvChatMessageListView) ViewBindings.a(view, R.id.chat_recycle);
        if (avChatMessageListView != null) {
            return new SrOverlayMainBinding(frameLayout, frameLayout, avChatMessageListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.chat_recycle)));
    }

    @NonNull
    public static SrOverlayMainBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SrOverlayMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sr_overlay_main, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SrOverlayMainBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull AvChatMessageListView avChatMessageListView) {
        this.rootView = frameLayout;
        this.chatMessageContainer = frameLayout2;
        this.chatRecycle = avChatMessageListView;
    }
}
