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
import com.narvii.chat.MultiAvatarView;
import com.narvii.chat.thread.ThreadListItem;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatThreadGroupItemBinding implements ViewBinding {

    @NonNull
    public final MultiAvatarView chatAvatars;

    @NonNull
    public final View chatThreadUnread;

    @NonNull
    public final TextView datetime;

    @NonNull
    private final ThreadListItem rootView;

    @NonNull
    public final LinearLayout stub0;

    @NonNull
    public final LinearLayout stub1;

    @NonNull
    public final TextView title;

    @NonNull
    public static ChatThreadGroupItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ThreadListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatThreadGroupItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_thread_group_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatThreadGroupItemBinding(@NonNull ThreadListItem threadListItem, @NonNull MultiAvatarView multiAvatarView, @NonNull View view, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.rootView = threadListItem;
        this.chatAvatars = multiAvatarView;
        this.chatThreadUnread = view;
        this.datetime = textView;
        this.stub0 = linearLayout;
        this.stub1 = linearLayout2;
        this.title = textView2;
    }

    @NonNull
    public static ChatThreadGroupItemBinding bind(@NonNull View view) {
        int i10 = R.id.chat_avatars;
        MultiAvatarView multiAvatarView = (MultiAvatarView) ViewBindings.a(view, R.id.chat_avatars);
        if (multiAvatarView != null) {
            i10 = R.id.chat_thread_unread;
            View viewA = ViewBindings.a(view, R.id.chat_thread_unread);
            if (viewA != null) {
                i10 = R.id.datetime;
                TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
                if (textView != null) {
                    i10 = R.id.stub0;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.stub0);
                    if (linearLayout != null) {
                        i10 = R.id.stub1;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.stub1);
                        if (linearLayout2 != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new ChatThreadGroupItemBinding((ThreadListItem) view, multiAvatarView, viewA, textView, linearLayout, linearLayout2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
