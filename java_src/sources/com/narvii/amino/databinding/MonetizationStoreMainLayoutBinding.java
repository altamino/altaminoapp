package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AlphaHeaderOverlayLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class MonetizationStoreMainLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoPlusBadge;

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView membershipStatus;

    @NonNull
    public final LinearLayout membershipUserInfoLayout;

    @NonNull
    public final TextView nickname;

    @NonNull
    public final AlphaHeaderOverlayLayout overlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout subscribeAminoPlusButton;

    @NonNull
    public final FrameLayout subscribeInfoContainerBottom;

    @NonNull
    public static MonetizationStoreMainLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreMainLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_main_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreMainLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull AlphaHeaderOverlayLayout alphaHeaderOverlayLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.aminoPlusBadge = imageView;
        this.avatar = thumbImageView;
        this.membershipStatus = textView;
        this.membershipUserInfoLayout = linearLayout;
        this.nickname = textView2;
        this.overlay = alphaHeaderOverlayLayout;
        this.subscribeAminoPlusButton = frameLayout2;
        this.subscribeInfoContainerBottom = frameLayout3;
    }

    @NonNull
    public static MonetizationStoreMainLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.amino_plus_badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_plus_badge);
        if (imageView != null) {
            i10 = R.id.avatar;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
            if (thumbImageView != null) {
                i10 = R.id.membership_status;
                TextView textView = (TextView) ViewBindings.a(view, R.id.membership_status);
                if (textView != null) {
                    i10 = R.id.membership_user_info_layout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.membership_user_info_layout);
                    if (linearLayout != null) {
                        i10 = R.id.nickname;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.nickname);
                        if (textView2 != null) {
                            i10 = R.id.overlay;
                            AlphaHeaderOverlayLayout alphaHeaderOverlayLayout = (AlphaHeaderOverlayLayout) ViewBindings.a(view, R.id.overlay);
                            if (alphaHeaderOverlayLayout != null) {
                                i10 = R.id.subscribe_amino_plus_button;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.subscribe_amino_plus_button);
                                if (frameLayout != null) {
                                    i10 = R.id.subscribe_info_container_bottom;
                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.subscribe_info_container_bottom);
                                    if (frameLayout2 != null) {
                                        return new MonetizationStoreMainLayoutBinding((FrameLayout) view, imageView, thumbImageView, textView, linearLayout, textView2, alphaHeaderOverlayLayout, frameLayout, frameLayout2);
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
