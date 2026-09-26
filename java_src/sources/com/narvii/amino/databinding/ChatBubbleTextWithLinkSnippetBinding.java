package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatReplyLayout;
import com.narvii.widget.ReplyParentLinearLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatBubbleTextWithLinkSnippetBinding implements ViewBinding {

    @NonNull
    public final ReplyParentLinearLayout chatContentLayout;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final FrameLayout linkFrame;

    @NonNull
    public final FlexLayout linkParsing;

    @NonNull
    public final LinearLayout linkSnippetRootContainer;

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
    public static ChatBubbleTextWithLinkSnippetBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_text_with_link_snippet, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleTextWithLinkSnippetBinding(@NonNull View view, @NonNull ReplyParentLinearLayout replyParentLinearLayout, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout, @NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull ChatReplyLayout chatReplyLayout, @NonNull TextView textView) {
        this.rootView = view;
        this.chatContentLayout = replyParentLinearLayout;
        this.image = thumbImageView;
        this.linkFrame = frameLayout;
        this.linkParsing = flexLayout;
        this.linkSnippetRootContainer = linearLayout;
        this.replyLayout = chatReplyLayout;
        this.text = textView;
    }

    @NonNull
    public static ChatBubbleTextWithLinkSnippetBinding bind(@NonNull View view) {
        int i10 = R.id.chat_content_layout;
        ReplyParentLinearLayout replyParentLinearLayout = (ReplyParentLinearLayout) ViewBindings.a(view, R.id.chat_content_layout);
        if (replyParentLinearLayout != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i10 = R.id.link_frame;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.link_frame);
                if (frameLayout != null) {
                    i10 = R.id.link_parsing;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.link_parsing);
                    if (flexLayout != null) {
                        i10 = R.id.link_snippet_root_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.link_snippet_root_container);
                        if (linearLayout != null) {
                            i10 = R.id.reply_layout;
                            ChatReplyLayout chatReplyLayout = (ChatReplyLayout) ViewBindings.a(view, R.id.reply_layout);
                            if (chatReplyLayout != null) {
                                i10 = R.id.text;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                                if (textView != null) {
                                    return new ChatBubbleTextWithLinkSnippetBinding(view, replyParentLinearLayout, thumbImageView, frameLayout, flexLayout, linearLayout, chatReplyLayout, textView);
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
