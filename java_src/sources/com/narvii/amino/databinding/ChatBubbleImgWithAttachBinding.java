package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ChatBubbleImgWithAttachBinding implements ViewBinding {

    @NonNull
    public final ChatImageView image;

    @NonNull
    private final View rootView;

    @NonNull
    public final View stub5;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBubbleImgWithAttachBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_img_with_attach, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleImgWithAttachBinding(@NonNull View view, @NonNull ChatImageView chatImageView, @NonNull View view2) {
        this.rootView = view;
        this.image = chatImageView;
        this.stub5 = view2;
    }

    @NonNull
    public static ChatBubbleImgWithAttachBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ChatImageView chatImageView = (ChatImageView) ViewBindings.a(view, R.id.image);
        if (chatImageView != null) {
            i10 = R.id.stub5;
            View viewA = ViewBindings.a(view, R.id.stub5);
            if (viewA != null) {
                return new ChatBubbleImgWithAttachBinding(view, chatImageView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
