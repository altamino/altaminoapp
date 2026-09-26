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

/* JADX INFO: loaded from: classes10.dex */
public final class AccountImportantNoticeBinding implements ViewBinding {

    @NonNull
    public final ImageView hideButton;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LinearLayout titleLayout;

    @NonNull
    public static AccountImportantNoticeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountImportantNoticeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_important_notice, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountImportantNoticeBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.hideButton = imageView;
        this.titleLayout = linearLayout;
    }

    @NonNull
    public static AccountImportantNoticeBinding bind(@NonNull View view) {
        int i10 = R.id.hide_button;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.hide_button);
        if (imageView != null) {
            i10 = R.id.title_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.title_layout);
            if (linearLayout != null) {
                return new AccountImportantNoticeBinding((FrameLayout) view, imageView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
