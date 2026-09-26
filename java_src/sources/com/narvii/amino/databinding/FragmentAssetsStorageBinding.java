package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentAssetsStorageBinding implements ViewBinding {

    @NonNull
    public final AppCompatButton deleteBtn;

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public final NVThemeTextView selectAll;

    @NonNull
    public final NVImageView selectAllImg;

    @NonNull
    public final NVImageView unselectAllImg;

    @NonNull
    public static FragmentAssetsStorageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAssetsStorageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_assets_storage, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAssetsStorageBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull AppCompatButton appCompatButton, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2) {
        this.rootView = nVThemeFrameLayout;
        this.deleteBtn = appCompatButton;
        this.selectAll = nVThemeTextView;
        this.selectAllImg = nVImageView;
        this.unselectAllImg = nVImageView2;
    }

    @NonNull
    public static FragmentAssetsStorageBinding bind(@NonNull View view) {
        int i10 = R.id.delete_btn;
        AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.a(view, R.id.delete_btn);
        if (appCompatButton != null) {
            i10 = R.id.select_all;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.select_all);
            if (nVThemeTextView != null) {
                i10 = R.id.select_all_img;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.select_all_img);
                if (nVImageView != null) {
                    i10 = R.id.unselect_all_img;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.unselect_all_img);
                    if (nVImageView2 != null) {
                        return new FragmentAssetsStorageBinding((NVThemeFrameLayout) view, appCompatButton, nVThemeTextView, nVImageView, nVImageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
