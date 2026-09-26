package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.PopButton;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogClaimGiftBinding implements ViewBinding {

    @NonNull
    public final FrameLayout claimCouponsCardContainer;

    @NonNull
    public final Button claimGiftButton;

    @NonNull
    public final Button claimGiftUseButton;

    @NonNull
    public final View clickRemoveMask;

    @NonNull
    public final PopButton close;

    @NonNull
    public final LinearLayout container;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogClaimGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogClaimGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_claim_gift, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogClaimGiftBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull Button button, @NonNull Button button2, @NonNull View view, @NonNull PopButton popButton, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.claimCouponsCardContainer = frameLayout2;
        this.claimGiftButton = button;
        this.claimGiftUseButton = button2;
        this.clickRemoveMask = view;
        this.close = popButton;
        this.container = linearLayout;
    }

    @NonNull
    public static DialogClaimGiftBinding bind(@NonNull View view) {
        int i10 = R.id.claim_coupons_card_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.claim_coupons_card_container);
        if (frameLayout != null) {
            i10 = R.id.claim_gift_button;
            Button button = (Button) ViewBindings.a(view, R.id.claim_gift_button);
            if (button != null) {
                i10 = R.id.claim_gift_use_button;
                Button button2 = (Button) ViewBindings.a(view, R.id.claim_gift_use_button);
                if (button2 != null) {
                    i10 = R.id.click_remove_mask;
                    View viewA = ViewBindings.a(view, R.id.click_remove_mask);
                    if (viewA != null) {
                        i10 = R.id.close;
                        PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
                        if (popButton != null) {
                            i10 = R.id.container;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.container);
                            if (linearLayout != null) {
                                return new DialogClaimGiftBinding((FrameLayout) view, frameLayout, button, button2, viewA, popButton, linearLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
