package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class LotteryCardLayoutBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView coinsCount;

    @NonNull
    public final ImageView coinsIcon;

    @NonNull
    public final TextView coinsText;

    @NonNull
    public final FrameLayout flipBack;

    @NonNull
    public final ThumbImageView flipBackBg;

    @NonNull
    public final FrameLayout flipFront;

    @NonNull
    public final LinearLayout resultCoins;

    @NonNull
    public final LinearLayout resultFailed;

    @NonNull
    public final LinearLayout resultSticker;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView sendSticker;

    @NonNull
    public final StickerImageView stickerImage;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LotteryCardLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.lottery_card_layout, viewGroup);
        return bind(viewGroup);
    }

    private LotteryCardLayoutBinding(@NonNull View view, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull StickerImageView stickerImageView) {
        this.rootView = view;
        this.coinsCount = autoSizingTextView;
        this.coinsIcon = imageView;
        this.coinsText = textView;
        this.flipBack = frameLayout;
        this.flipBackBg = thumbImageView;
        this.flipFront = frameLayout2;
        this.resultCoins = linearLayout;
        this.resultFailed = linearLayout2;
        this.resultSticker = linearLayout3;
        this.sendSticker = textView2;
        this.stickerImage = stickerImageView;
    }

    @NonNull
    public static LotteryCardLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.coins_count;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.coins_count);
        if (autoSizingTextView != null) {
            i10 = R.id.coins_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.coins_icon);
            if (imageView != null) {
                i10 = R.id.coins_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.coins_text);
                if (textView != null) {
                    i10 = R.id.flip_back;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.flip_back);
                    if (frameLayout != null) {
                        i10 = R.id.flip_back_bg;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.flip_back_bg);
                        if (thumbImageView != null) {
                            i10 = R.id.flip_front;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.flip_front);
                            if (frameLayout2 != null) {
                                i10 = R.id.result_coins;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.result_coins);
                                if (linearLayout != null) {
                                    i10 = R.id.result_failed;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.result_failed);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.result_sticker;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.result_sticker);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.send_sticker;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.send_sticker);
                                            if (textView2 != null) {
                                                i10 = R.id.sticker_image;
                                                StickerImageView stickerImageView = (StickerImageView) ViewBindings.a(view, R.id.sticker_image);
                                                if (stickerImageView != null) {
                                                    return new LotteryCardLayoutBinding(view, autoSizingTextView, imageView, textView, frameLayout, thumbImageView, frameLayout2, linearLayout, linearLayout2, linearLayout3, textView2, stickerImageView);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
