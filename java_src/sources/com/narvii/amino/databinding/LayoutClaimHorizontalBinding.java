package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.PressedFrameLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutClaimHorizontalBinding implements ViewBinding {

    @NonNull
    public final ImageView claimGift;

    @NonNull
    public final FlexLayout giftContainer;

    @NonNull
    public final PressedFrameLayout hint;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LayoutClaimHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutClaimHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_claim_horizontal, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutClaimHorizontalBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FlexLayout flexLayout, @NonNull PressedFrameLayout pressedFrameLayout) {
        this.rootView = frameLayout;
        this.claimGift = imageView;
        this.giftContainer = flexLayout;
        this.hint = pressedFrameLayout;
    }

    @NonNull
    public static LayoutClaimHorizontalBinding bind(@NonNull View view) {
        int i10 = R.id.claim_gift;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.claim_gift);
        if (imageView != null) {
            i10 = R.id.gift_container;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.gift_container);
            if (flexLayout != null) {
                i10 = R.id.hint;
                PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.hint);
                if (pressedFrameLayout != null) {
                    return new LayoutClaimHorizontalBinding((FrameLayout) view, imageView, flexLayout, pressedFrameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
