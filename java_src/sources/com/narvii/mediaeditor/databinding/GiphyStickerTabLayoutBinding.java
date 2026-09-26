package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class GiphyStickerTabLayoutBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVImageView tabIcon;

    @NonNull
    public static GiphyStickerTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GiphyStickerTabLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.tab_icon;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
        if (nVImageView != null) {
            return new GiphyStickerTabLayoutBinding((FrameLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static GiphyStickerTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.giphy_sticker_tab_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GiphyStickerTabLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.tabIcon = nVImageView;
    }
}
