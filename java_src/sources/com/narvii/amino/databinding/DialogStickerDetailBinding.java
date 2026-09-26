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
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogStickerDetailBinding implements ViewBinding {

    @NonNull
    public final TintButton flag;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView stickName;

    @NonNull
    public final StickerImageView stickerImage;

    @NonNull
    public static DialogStickerDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogStickerDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_sticker_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogStickerDetailBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull StickerImageView stickerImageView) {
        this.rootView = linearLayout;
        this.flag = tintButton;
        this.stickName = textView;
        this.stickerImage = stickerImageView;
    }

    @NonNull
    public static DialogStickerDetailBinding bind(@NonNull View view) {
        int i10 = R.id.flag;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.flag);
        if (tintButton != null) {
            i10 = R.id.stick_name;
            TextView textView = (TextView) ViewBindings.a(view, R.id.stick_name);
            if (textView != null) {
                i10 = R.id.sticker_image;
                StickerImageView stickerImageView = (StickerImageView) ViewBindings.a(view, R.id.sticker_image);
                if (stickerImageView != null) {
                    return new DialogStickerDetailBinding((LinearLayout) view, tintButton, textView, stickerImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
