package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.CheckMarkView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class AccountSignupIndicatorLayoutBinding implements ViewBinding {

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final ImageView status;

    @NonNull
    public final ThumbImageView statusBg;

    @NonNull
    public final CheckMarkView success;

    @NonNull
    public static AccountSignupIndicatorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountSignupIndicatorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_signup_indicator_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountSignupIndicatorLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull ThumbImageView thumbImageView, @NonNull CheckMarkView checkMarkView) {
        this.rootView = flexLayout;
        this.status = imageView;
        this.statusBg = thumbImageView;
        this.success = checkMarkView;
    }

    @NonNull
    public static AccountSignupIndicatorLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.status;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.status);
        if (imageView != null) {
            i10 = R.id.status_bg;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.status_bg);
            if (thumbImageView != null) {
                i10 = R.id.success;
                CheckMarkView checkMarkView = (CheckMarkView) ViewBindings.a(view, R.id.success);
                if (checkMarkView != null) {
                    return new AccountSignupIndicatorLayoutBinding((FlexLayout) view, imageView, thumbImageView, checkMarkView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
