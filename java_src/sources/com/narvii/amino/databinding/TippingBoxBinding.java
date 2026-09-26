package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PressedFrameLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class TippingBoxBinding implements ViewBinding {

    @NonNull
    public final ImageView authorCoin;

    @NonNull
    public final FrameLayout authorCoinLayout;

    @NonNull
    public final View boxBg;

    @NonNull
    public final View boxSlot;

    @NonNull
    public final AutoSizingTextView coins;

    @NonNull
    public final LinearLayout coinsLayout;

    @NonNull
    public final PressedFrameLayout content;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final AutoSizingTextView tipAuthor;

    @NonNull
    public final FrameLayout tipBoxRoot;

    @NonNull
    public final ImageView viewerCoin;

    @NonNull
    public final FrameLayout viewerCoinLayout;

    @NonNull
    public final ImageView viewerLove;

    @NonNull
    public final NVImageView viewerStar;

    @NonNull
    public static TippingBoxBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TippingBoxBinding bind(@NonNull View view) {
        int i10 = R.id.author_coin;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.author_coin);
        if (imageView != null) {
            i10 = R.id.author_coin_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.author_coin_layout);
            if (frameLayout != null) {
                i10 = R.id.box_bg;
                View viewA = ViewBindings.a(view, R.id.box_bg);
                if (viewA != null) {
                    i10 = R.id.box_slot;
                    View viewA2 = ViewBindings.a(view, R.id.box_slot);
                    if (viewA2 != null) {
                        i10 = R.id.coins;
                        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.coins);
                        if (autoSizingTextView != null) {
                            i10 = R.id.coins_layout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.coins_layout);
                            if (linearLayout != null) {
                                i10 = R.id.content;
                                PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.content);
                                if (pressedFrameLayout != null) {
                                    i10 = R.id.tip_author;
                                    AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.tip_author);
                                    if (autoSizingTextView2 != null) {
                                        FrameLayout frameLayout2 = (FrameLayout) view;
                                        i10 = R.id.viewer_coin;
                                        ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.viewer_coin);
                                        if (imageView2 != null) {
                                            i10 = R.id.viewer_coin_layout;
                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.viewer_coin_layout);
                                            if (frameLayout3 != null) {
                                                i10 = R.id.viewer_love;
                                                ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.viewer_love);
                                                if (imageView3 != null) {
                                                    i10 = R.id.viewer_star;
                                                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.viewer_star);
                                                    if (nVImageView != null) {
                                                        return new TippingBoxBinding(frameLayout2, imageView, frameLayout, viewA, viewA2, autoSizingTextView, linearLayout, pressedFrameLayout, autoSizingTextView2, frameLayout2, imageView2, frameLayout3, imageView3, nVImageView);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static TippingBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tipping_box, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TippingBoxBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull View view, @NonNull View view2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull LinearLayout linearLayout, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout4, @NonNull ImageView imageView3, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.authorCoin = imageView;
        this.authorCoinLayout = frameLayout2;
        this.boxBg = view;
        this.boxSlot = view2;
        this.coins = autoSizingTextView;
        this.coinsLayout = linearLayout;
        this.content = pressedFrameLayout;
        this.tipAuthor = autoSizingTextView2;
        this.tipBoxRoot = frameLayout3;
        this.viewerCoin = imageView2;
        this.viewerCoinLayout = frameLayout4;
        this.viewerLove = imageView3;
        this.viewerStar = nVImageView;
    }
}
