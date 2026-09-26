package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatFlexSizeImageView;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.ChatStickerView;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentStickerDetailBinding implements ViewBinding {

    @NonNull
    public final ChatStickerView chatSticker;

    @NonNull
    public final StickerImageView collectionIcon;

    @NonNull
    public final LinearLayout collectionLayout;

    @NonNull
    public final NVImageView image;

    @NonNull
    public final EmojioneView moodSticker;

    @NonNull
    public final TextView name;

    @NonNull
    public final ChatFlexSizeImageView placeholder;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final StoreItemNameView stickerCollectionName;

    @NonNull
    public final StoreItemStatusView storeItemStatusView;

    @NonNull
    public final TextView subtitle;

    @NonNull
    public static FragmentStickerDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentStickerDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sticker_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentStickerDetailBinding(@NonNull FrameLayout frameLayout, @NonNull ChatStickerView chatStickerView, @NonNull StickerImageView stickerImageView, @NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull EmojioneView emojioneView, @NonNull TextView textView, @NonNull ChatFlexSizeImageView chatFlexSizeImageView, @NonNull StoreItemNameView storeItemNameView, @NonNull StoreItemStatusView storeItemStatusView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.chatSticker = chatStickerView;
        this.collectionIcon = stickerImageView;
        this.collectionLayout = linearLayout;
        this.image = nVImageView;
        this.moodSticker = emojioneView;
        this.name = textView;
        this.placeholder = chatFlexSizeImageView;
        this.stickerCollectionName = storeItemNameView;
        this.storeItemStatusView = storeItemStatusView;
        this.subtitle = textView2;
    }

    @NonNull
    public static FragmentStickerDetailBinding bind(@NonNull View view) {
        int i10 = R.id.chat_sticker;
        ChatStickerView chatStickerView = (ChatStickerView) ViewBindings.a(view, R.id.chat_sticker);
        if (chatStickerView != null) {
            i10 = R.id.collection_icon;
            StickerImageView stickerImageView = (StickerImageView) ViewBindings.a(view, R.id.collection_icon);
            if (stickerImageView != null) {
                i10 = R.id.collection_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.collection_layout);
                if (linearLayout != null) {
                    i10 = R.id.image;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
                    if (nVImageView != null) {
                        i10 = R.id.mood_sticker;
                        EmojioneView emojioneView = (EmojioneView) ViewBindings.a(view, R.id.mood_sticker);
                        if (emojioneView != null) {
                            i10 = R.id.name;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.name);
                            if (textView != null) {
                                i10 = R.id.placeholder;
                                ChatFlexSizeImageView chatFlexSizeImageView = (ChatFlexSizeImageView) ViewBindings.a(view, R.id.placeholder);
                                if (chatFlexSizeImageView != null) {
                                    i10 = R.id.sticker_collection_name;
                                    StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.sticker_collection_name);
                                    if (storeItemNameView != null) {
                                        i10 = R.id.store_item_status_view;
                                        StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.store_item_status_view);
                                        if (storeItemStatusView != null) {
                                            i10 = R.id.subtitle;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.subtitle);
                                            if (textView2 != null) {
                                                return new FragmentStickerDetailBinding((FrameLayout) view, chatStickerView, stickerImageView, linearLayout, nVImageView, emojioneView, textView, chatFlexSizeImageView, storeItemNameView, storeItemStatusView, textView2);
                                            }
                                        }
                                    }
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
