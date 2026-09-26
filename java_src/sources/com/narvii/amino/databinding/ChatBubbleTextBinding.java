package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatReplyLayout;
import com.narvii.widget.ReplyParentLinearLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ChatBubbleTextBinding implements ViewBinding {

    @NonNull
    public final ReplyParentLinearLayout chatContentLayout;

    @NonNull
    public final ChatReplyLayout replyLayout;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBubbleTextBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_text, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleTextBinding(@NonNull View view, @NonNull ReplyParentLinearLayout replyParentLinearLayout, @NonNull ChatReplyLayout chatReplyLayout, @NonNull TextView textView) {
        this.rootView = view;
        this.chatContentLayout = replyParentLinearLayout;
        this.replyLayout = chatReplyLayout;
        this.text = textView;
    }

    @NonNull
    public static ChatBubbleTextBinding bind(@NonNull View view) {
        int i10 = R.id.chat_content_layout;
        ReplyParentLinearLayout replyParentLinearLayout = (ReplyParentLinearLayout) ViewBindings.a(view, R.id.chat_content_layout);
        if (replyParentLinearLayout != null) {
            i10 = R.id.reply_layout;
            ChatReplyLayout chatReplyLayout = (ChatReplyLayout) ViewBindings.a(view, R.id.reply_layout);
            if (chatReplyLayout != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                if (textView != null) {
                    return new ChatBubbleTextBinding(view, replyParentLinearLayout, chatReplyLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
