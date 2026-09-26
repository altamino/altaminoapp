package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatBubbleView;

/* JADX INFO: loaded from: classes10.dex */
public final class BubbleViewContainerBinding implements ViewBinding {

    @NonNull
    public final ChatBubbleView chatBubble;

    @NonNull
    public final RelativeLayout content;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static BubbleViewContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BubbleViewContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bubble_view_container, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BubbleViewContainerBinding(@NonNull FrameLayout frameLayout, @NonNull ChatBubbleView chatBubbleView, @NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.chatBubble = chatBubbleView;
        this.content = relativeLayout;
        this.root = frameLayout2;
    }

    @NonNull
    public static BubbleViewContainerBinding bind(@NonNull View view) {
        int i10 = R.id.chat_bubble;
        ChatBubbleView chatBubbleView = (ChatBubbleView) ViewBindings.a(view, R.id.chat_bubble);
        if (chatBubbleView != null) {
            i10 = R.id.content;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.content);
            if (relativeLayout != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                return new BubbleViewContainerBinding(frameLayout, chatBubbleView, relativeLayout, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
