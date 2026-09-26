package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PopButton;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogMembershipTrialLayoutBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    public final PopButton close;

    @NonNull
    public final LinearLayout dialogContent;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final AutoSizingTextView tryFree;

    @NonNull
    public final ThumbImageView tryFreeBtnBg;

    @NonNull
    public static DialogMembershipTrialLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogMembershipTrialLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_membership_trial_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogMembershipTrialLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull PopButton popButton, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ThumbImageView thumbImageView) {
        this.rootView = flexLayout;
        this.bg = view;
        this.close = popButton;
        this.dialogContent = linearLayout;
        this.mainLayout = flexLayout2;
        this.tryFree = autoSizingTextView;
        this.tryFreeBtnBg = thumbImageView;
    }

    @NonNull
    public static DialogMembershipTrialLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        View viewA = ViewBindings.a(view, R.id.bg);
        if (viewA != null) {
            i10 = R.id.close;
            PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
            if (popButton != null) {
                i10 = R.id.dialog_content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.dialog_content);
                if (linearLayout != null) {
                    i10 = R.id.main_layout;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
                    if (flexLayout != null) {
                        i10 = R.id.try_free;
                        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.try_free);
                        if (autoSizingTextView != null) {
                            i10 = R.id.try_free_btn_bg;
                            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.try_free_btn_bg);
                            if (thumbImageView != null) {
                                return new DialogMembershipTrialLayoutBinding((FlexLayout) view, viewA, popButton, linearLayout, flexLayout, autoSizingTextView, thumbImageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
