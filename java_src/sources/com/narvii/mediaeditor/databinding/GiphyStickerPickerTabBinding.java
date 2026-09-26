package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes7.dex */
public final class GiphyStickerPickerTabBinding implements ViewBinding {

    @NonNull
    public final LinearLayout pickerTabLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TintButton stickerAdd;

    @NonNull
    public final TintButton stickerSearch;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public static GiphyStickerPickerTabBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.sticker_add;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.sticker_search;
            TintButton tintButton2 = (TintButton) ViewBindings.a(view, i10);
            if (tintButton2 != null) {
                i10 = R.id.tabs;
                NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, i10);
                if (nVPagerTabLayout != null) {
                    return new GiphyStickerPickerTabBinding(linearLayout, linearLayout, tintButton, tintButton2, nVPagerTabLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static GiphyStickerPickerTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GiphyStickerPickerTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.giphy_sticker_picker_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GiphyStickerPickerTabBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton, @NonNull TintButton tintButton2, @NonNull NVPagerTabLayout nVPagerTabLayout) {
        this.rootView = linearLayout;
        this.pickerTabLayout = linearLayout2;
        this.stickerAdd = tintButton;
        this.stickerSearch = tintButton2;
        this.tabs = nVPagerTabLayout;
    }
}
