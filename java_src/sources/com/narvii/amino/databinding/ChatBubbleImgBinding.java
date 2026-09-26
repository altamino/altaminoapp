package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatFlexSizeImageView;
import com.narvii.chat.ChatImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ChatBubbleImgBinding implements ViewBinding {

    @NonNull
    public final ChatImageView image;

    @NonNull
    public final ChatFlexSizeImageView placeholder;

    @NonNull
    private final View rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBubbleImgBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_img, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleImgBinding(@NonNull View view, @NonNull ChatImageView chatImageView, @NonNull ChatFlexSizeImageView chatFlexSizeImageView, @NonNull View view2) {
        this.rootView = view;
        this.image = chatImageView;
        this.placeholder = chatFlexSizeImageView;
        this.stub1 = view2;
    }

    @NonNull
    public static ChatBubbleImgBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ChatImageView chatImageView = (ChatImageView) ViewBindings.a(view, R.id.image);
        if (chatImageView != null) {
            i10 = R.id.placeholder;
            ChatFlexSizeImageView chatFlexSizeImageView = (ChatFlexSizeImageView) ViewBindings.a(view, R.id.placeholder);
            if (chatFlexSizeImageView != null) {
                i10 = R.id.stub1;
                View viewA = ViewBindings.a(view, R.id.stub1);
                if (viewA != null) {
                    return new ChatBubbleImgBinding(view, chatImageView, chatFlexSizeImageView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
