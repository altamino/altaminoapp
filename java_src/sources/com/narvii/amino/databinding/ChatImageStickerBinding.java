package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatFlexSizeImageView;
import com.narvii.widget.ChatStickerView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatImageStickerBinding implements ViewBinding {

    @NonNull
    public final ChatStickerView chatSticker;

    @NonNull
    public final NVImageView image;

    @NonNull
    public final ChatFlexSizeImageView placeholder;

    @NonNull
    private final ChatStickerView rootView;

    @NonNull
    public static ChatImageStickerBinding bind(@NonNull View view) {
        ChatStickerView chatStickerView = (ChatStickerView) view;
        int i10 = R.id.image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
        if (nVImageView != null) {
            i10 = R.id.placeholder;
            ChatFlexSizeImageView chatFlexSizeImageView = (ChatFlexSizeImageView) ViewBindings.a(view, R.id.placeholder);
            if (chatFlexSizeImageView != null) {
                return new ChatImageStickerBinding(chatStickerView, chatStickerView, nVImageView, chatFlexSizeImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatImageStickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatStickerView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatImageStickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_image_sticker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatImageStickerBinding(@NonNull ChatStickerView chatStickerView, @NonNull ChatStickerView chatStickerView2, @NonNull NVImageView nVImageView, @NonNull ChatFlexSizeImageView chatFlexSizeImageView) {
        this.rootView = chatStickerView;
        this.chatSticker = chatStickerView2;
        this.image = nVImageView;
        this.placeholder = chatFlexSizeImageView;
    }
}
