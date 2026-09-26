package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatThreadHangoutGlobalSearchItemBinding implements ViewBinding {

    @NonNull
    public final TextView chatThreadPublicChat;

    @NonNull
    public final View chatThreadUnread;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final ThreadListItem rootView;

    @NonNull
    public final LinearLayout stub0;

    @NonNull
    public final LinearLayout stub1;

    @NonNull
    public final TextView title;

    @NonNull
    public static ChatThreadHangoutGlobalSearchItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ThreadListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatThreadHangoutGlobalSearchItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_thread_hangout_global_search_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatThreadHangoutGlobalSearchItemBinding(@NonNull ThreadListItem threadListItem, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3) {
        this.rootView = threadListItem;
        this.chatThreadPublicChat = textView;
        this.chatThreadUnread = view;
        this.datetime = textView2;
        this.image = thumbImageView;
        this.stub0 = linearLayout;
        this.stub1 = linearLayout2;
        this.title = textView3;
    }

    @NonNull
    public static ChatThreadHangoutGlobalSearchItemBinding bind(@NonNull View view) {
        int i10 = R.id.chat_thread_public_chat;
        TextView textView = (TextView) ViewBindings.a(view, R.id.chat_thread_public_chat);
        if (textView != null) {
            i10 = R.id.chat_thread_unread;
            View viewA = ViewBindings.a(view, R.id.chat_thread_unread);
            if (viewA != null) {
                i10 = R.id.datetime;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.datetime);
                if (textView2 != null) {
                    i10 = R.id.image;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                    if (thumbImageView != null) {
                        i10 = R.id.stub0;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.stub0);
                        if (linearLayout != null) {
                            i10 = R.id.stub1;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.stub1);
                            if (linearLayout2 != null) {
                                i10 = R.id.title;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView3 != null) {
                                    return new ChatThreadHangoutGlobalSearchItemBinding((ThreadListItem) view, textView, viewA, textView2, thumbImageView, linearLayout, linearLayout2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
