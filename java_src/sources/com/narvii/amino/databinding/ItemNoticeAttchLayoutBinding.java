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
import com.narvii.widget.EmojioneView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemNoticeAttchLayoutBinding implements ViewBinding {

    @NonNull
    public final EmojioneView moodSticker;

    @NonNull
    public final ThumbImageView objAvatar;

    @NonNull
    public final TextView objContent;

    @NonNull
    public final TintButton objIndicator;

    @NonNull
    public final TextView objTitle;

    @NonNull
    public final View refObjMargin;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout strikeObjContainer;

    @NonNull
    public static ItemNoticeAttchLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeAttchLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_attch_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeAttchLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull EmojioneView emojioneView, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull TextView textView2, @NonNull View view, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.moodSticker = emojioneView;
        this.objAvatar = thumbImageView;
        this.objContent = textView;
        this.objIndicator = tintButton;
        this.objTitle = textView2;
        this.refObjMargin = view;
        this.strikeObjContainer = linearLayout2;
    }

    @NonNull
    public static ItemNoticeAttchLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.mood_sticker;
        EmojioneView emojioneView = (EmojioneView) ViewBindings.a(view, R.id.mood_sticker);
        if (emojioneView != null) {
            i10 = R.id.obj_avatar;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.obj_avatar);
            if (thumbImageView != null) {
                i10 = R.id.obj_content;
                TextView textView = (TextView) ViewBindings.a(view, R.id.obj_content);
                if (textView != null) {
                    i10 = R.id.obj_indicator;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.obj_indicator);
                    if (tintButton != null) {
                        i10 = R.id.obj_title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.obj_title);
                        if (textView2 != null) {
                            i10 = R.id.ref_obj_margin;
                            View viewA = ViewBindings.a(view, R.id.ref_obj_margin);
                            if (viewA != null) {
                                i10 = R.id.strike_obj_container;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.strike_obj_container);
                                if (linearLayout != null) {
                                    return new ItemNoticeAttchLayoutBinding((LinearLayout) view, emojioneView, thumbImageView, textView, tintButton, textView2, viewA, linearLayout);
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
