package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.PopButton;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class DialogAnnouncementLayoutBinding implements ViewBinding {

    @NonNull
    public final PopButton annIndicator;

    @NonNull
    public final View bg;

    @NonNull
    public final PopButton close;

    @NonNull
    public final FullsizeImageView cover;

    @NonNull
    public final SpinningView coverLoading;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static DialogAnnouncementLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAnnouncementLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_announcement_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAnnouncementLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull PopButton popButton, @NonNull View view, @NonNull PopButton popButton2, @NonNull FullsizeImageView fullsizeImageView, @NonNull SpinningView spinningView, @NonNull FlexLayout flexLayout2) {
        this.rootView = flexLayout;
        this.annIndicator = popButton;
        this.bg = view;
        this.close = popButton2;
        this.cover = fullsizeImageView;
        this.coverLoading = spinningView;
        this.mainLayout = flexLayout2;
    }

    @NonNull
    public static DialogAnnouncementLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.ann_indicator;
        PopButton popButton = (PopButton) ViewBindings.a(view, R.id.ann_indicator);
        if (popButton != null) {
            i10 = R.id.bg;
            View viewA = ViewBindings.a(view, R.id.bg);
            if (viewA != null) {
                i10 = R.id.close;
                PopButton popButton2 = (PopButton) ViewBindings.a(view, R.id.close);
                if (popButton2 != null) {
                    i10 = R.id.cover;
                    FullsizeImageView fullsizeImageView = (FullsizeImageView) ViewBindings.a(view, R.id.cover);
                    if (fullsizeImageView != null) {
                        i10 = R.id.cover_loading;
                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.cover_loading);
                        if (spinningView != null) {
                            i10 = R.id.main_layout;
                            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
                            if (flexLayout != null) {
                                return new DialogAnnouncementLayoutBinding((FlexLayout) view, popButton, viewA, popButton2, fullsizeImageView, spinningView, flexLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
