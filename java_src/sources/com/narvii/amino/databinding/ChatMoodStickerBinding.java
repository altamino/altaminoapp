package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.EmojioneView;

/* JADX INFO: loaded from: classes.dex */
public final class ChatMoodStickerBinding implements ViewBinding {

    @NonNull
    public final EmojioneView moodSticker;

    @NonNull
    private final EmojioneView rootView;

    @NonNull
    public static ChatMoodStickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public EmojioneView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatMoodStickerBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        EmojioneView emojioneView = (EmojioneView) view;
        return new ChatMoodStickerBinding(emojioneView, emojioneView);
    }

    @NonNull
    public static ChatMoodStickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_mood_sticker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatMoodStickerBinding(@NonNull EmojioneView emojioneView, @NonNull EmojioneView emojioneView2) {
        this.rootView = emojioneView;
        this.moodSticker = emojioneView2;
    }
}
