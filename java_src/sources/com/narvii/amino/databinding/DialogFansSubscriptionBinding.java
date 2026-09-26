package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PurchaseConfirmButton;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogFansSubscriptionBinding implements ViewBinding {

    @NonNull
    public final LinearLayout bottomView;

    @NonNull
    public final View clickRemoveMask;

    @NonNull
    public final PurchaseConfirmButton confirmButton;

    @NonNull
    public final TextView earnCoinsText;

    @NonNull
    public final TextView fanSubscriptionStartTime;

    @NonNull
    public final RadiusLayout fansSubscriptionContent;

    @NonNull
    public final NVImageView fansSubscriptionCover;

    @NonNull
    public final TextView fansSubscriptionTitle;

    @NonNull
    public final View gradientMask;

    @NonNull
    public final ImageView icFansSubscriptionLabel1;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ScrollView scrollView;

    @NonNull
    public final TextView subscriptionAutoRenewHintInfo;

    @NonNull
    public final TextView totalCoinCount;

    @NonNull
    public static DialogFansSubscriptionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogFansSubscriptionBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_view;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bottom_view);
        if (linearLayout != null) {
            i10 = R.id.click_remove_mask;
            View viewA = ViewBindings.a(view, R.id.click_remove_mask);
            if (viewA != null) {
                i10 = R.id.confirm_button;
                PurchaseConfirmButton purchaseConfirmButton = (PurchaseConfirmButton) ViewBindings.a(view, R.id.confirm_button);
                if (purchaseConfirmButton != null) {
                    i10 = R.id.earn_coins_text;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.earn_coins_text);
                    if (textView != null) {
                        i10 = R.id.fan_subscription_start_time;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.fan_subscription_start_time);
                        if (textView2 != null) {
                            i10 = R.id.fans_subscription_content;
                            RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, R.id.fans_subscription_content);
                            if (radiusLayout != null) {
                                i10 = R.id.fans_subscription_cover;
                                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.fans_subscription_cover);
                                if (nVImageView != null) {
                                    i10 = R.id.fans_subscription_title;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.fans_subscription_title);
                                    if (textView3 != null) {
                                        i10 = R.id.gradient_mask;
                                        View viewA2 = ViewBindings.a(view, R.id.gradient_mask);
                                        if (viewA2 != null) {
                                            i10 = R.id.ic_fans_subscription_label_1;
                                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.ic_fans_subscription_label_1);
                                            if (imageView != null) {
                                                i10 = R.id.scrollView;
                                                ScrollView scrollView = (ScrollView) ViewBindings.a(view, R.id.scrollView);
                                                if (scrollView != null) {
                                                    i10 = R.id.subscription_auto_renew_hint_info;
                                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.subscription_auto_renew_hint_info);
                                                    if (textView4 != null) {
                                                        i10 = R.id.total_coin_count;
                                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.total_coin_count);
                                                        if (textView5 != null) {
                                                            return new DialogFansSubscriptionBinding((FrameLayout) view, linearLayout, viewA, purchaseConfirmButton, textView, textView2, radiusLayout, nVImageView, textView3, viewA2, imageView, scrollView, textView4, textView5);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogFansSubscriptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_fans_subscription, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogFansSubscriptionBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull PurchaseConfirmButton purchaseConfirmButton, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RadiusLayout radiusLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView3, @NonNull View view2, @NonNull ImageView imageView, @NonNull ScrollView scrollView, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = frameLayout;
        this.bottomView = linearLayout;
        this.clickRemoveMask = view;
        this.confirmButton = purchaseConfirmButton;
        this.earnCoinsText = textView;
        this.fanSubscriptionStartTime = textView2;
        this.fansSubscriptionContent = radiusLayout;
        this.fansSubscriptionCover = nVImageView;
        this.fansSubscriptionTitle = textView3;
        this.gradientMask = view2;
        this.icFansSubscriptionLabel1 = imageView;
        this.scrollView = scrollView;
        this.subscriptionAutoRenewHintInfo = textView4;
        this.totalCoinCount = textView5;
    }
}
