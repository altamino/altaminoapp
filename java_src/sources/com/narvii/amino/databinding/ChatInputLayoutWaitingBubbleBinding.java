package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes11.dex */
public final class ChatInputLayoutWaitingBubbleBinding implements ViewBinding {

    @NonNull
    public final PopupBubble popupBubble;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout tooltipLayout;

    @NonNull
    public final TextView waitingMemberHint;

    @NonNull
    public final LiveLayerOnlineBar waitingMemberList;

    @NonNull
    public static ChatInputLayoutWaitingBubbleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatInputLayoutWaitingBubbleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_input_layout_waiting_bubble, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatInputLayoutWaitingBubbleBinding(@NonNull FrameLayout frameLayout, @NonNull PopupBubble popupBubble, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull LiveLayerOnlineBar liveLayerOnlineBar) {
        this.rootView = frameLayout;
        this.popupBubble = popupBubble;
        this.tooltipLayout = frameLayout2;
        this.waitingMemberHint = textView;
        this.waitingMemberList = liveLayerOnlineBar;
    }

    @NonNull
    public static ChatInputLayoutWaitingBubbleBinding bind(@NonNull View view) {
        int i10 = R.id.popup_bubble;
        PopupBubble popupBubble = (PopupBubble) ViewBindings.a(view, R.id.popup_bubble);
        if (popupBubble != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i10 = R.id.waiting_member_hint;
            TextView textView = (TextView) ViewBindings.a(view, R.id.waiting_member_hint);
            if (textView != null) {
                i10 = R.id.waiting_member_list;
                LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.waiting_member_list);
                if (liveLayerOnlineBar != null) {
                    return new ChatInputLayoutWaitingBubbleBinding(frameLayout, popupBubble, frameLayout, textView, liveLayerOnlineBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
