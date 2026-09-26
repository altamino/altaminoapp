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
import com.narvii.chat.ChatListView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes5.dex */
public final class ChatListLayoutBinding implements ViewBinding {

    @NonNull
    public final ChatListView list;

    @NonNull
    public final TextView newMessage;

    @NonNull
    public final FrameLayout newMessageContainer;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ChatListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatListLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ChatListView chatListView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.list = chatListView;
        this.newMessage = textView;
        this.newMessageContainer = frameLayout2;
        this.progress = spinningView;
    }

    @NonNull
    public static ChatListLayoutBinding bind(@NonNull View view) {
        int i10 = android.R.id.list;
        ChatListView chatListView = (ChatListView) ViewBindings.a(view, android.R.id.list);
        if (chatListView != null) {
            i10 = R.id.new_message;
            TextView textView = (TextView) ViewBindings.a(view, R.id.new_message);
            if (textView != null) {
                i10 = R.id.new_message_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.new_message_container);
                if (frameLayout != null) {
                    i10 = android.R.id.progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                    if (spinningView != null) {
                        return new ChatListLayoutBinding((FrameLayout) view, chatListView, textView, frameLayout, spinningView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
