package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentAssetsStorageItemBinding implements ViewBinding {

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final NVImageView selectedImg;

    @NonNull
    public final NVThemeTextView size;

    @NonNull
    public final NVThemeTextView title;

    @NonNull
    public final NVImageView unselectedImg;

    @NonNull
    public static FragmentAssetsStorageItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAssetsStorageItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_assets_storage_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAssetsStorageItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull NVImageView nVImageView, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2, @NonNull NVImageView nVImageView2) {
        this.rootView = relativeLayout;
        this.selectedImg = nVImageView;
        this.size = nVThemeTextView;
        this.title = nVThemeTextView2;
        this.unselectedImg = nVImageView2;
    }

    @NonNull
    public static FragmentAssetsStorageItemBinding bind(@NonNull View view) {
        int i10 = R.id.selected_img;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.selected_img);
        if (nVImageView != null) {
            i10 = R.id.size;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.size);
            if (nVThemeTextView != null) {
                i10 = R.id.title;
                NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.title);
                if (nVThemeTextView2 != null) {
                    i10 = R.id.unselected_img;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.unselected_img);
                    if (nVImageView2 != null) {
                        return new FragmentAssetsStorageItemBinding((RelativeLayout) view, nVImageView, nVThemeTextView, nVThemeTextView2, nVImageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
