package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class AccountRestoreToolbarBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final TextView next;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final RelativeLayout titleBar;

    @NonNull
    public static AccountRestoreToolbarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountRestoreToolbarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_restore_toolbar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountRestoreToolbarBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.actionbarBack = imageView;
        this.next = textView;
        this.title = textView2;
        this.titleBar = relativeLayout2;
    }

    @NonNull
    public static AccountRestoreToolbarBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.next;
            TextView textView = (TextView) ViewBindings.a(view, R.id.next);
            if (textView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    return new AccountRestoreToolbarBinding(relativeLayout, imageView, textView, textView2, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
