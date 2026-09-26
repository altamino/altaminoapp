package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogMembershipBaseBinding implements ViewBinding {

    @NonNull
    public final TintButton close;

    @NonNull
    public final TextView hintContent;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView subscribe;

    @NonNull
    public final ThumbImageView subscribeBg;

    @NonNull
    public final FlexLayout subscribeLayout;

    @NonNull
    public static DialogMembershipBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogMembershipBaseBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.hint_content;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.subscribe;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.subscribe_bg;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                    if (thumbImageView != null) {
                        i10 = R.id.subscribe_layout;
                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                        if (flexLayout != null) {
                            return new DialogMembershipBaseBinding((LinearLayout) view, tintButton, textView, textView2, thumbImageView, flexLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogMembershipBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_membership_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogMembershipBaseBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull FlexLayout flexLayout) {
        this.rootView = linearLayout;
        this.close = tintButton;
        this.hintContent = textView;
        this.subscribe = textView2;
        this.subscribeBg = thumbImageView;
        this.subscribeLayout = flexLayout;
    }
}
