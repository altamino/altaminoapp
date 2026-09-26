package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentGiphyStickerPickerTabBinding implements ViewBinding {

    @NonNull
    public final ImageView close;

    @NonNull
    public final GiphyStickerPickerPageBinding giphyStickerPickerPage;

    @NonNull
    public final GiphyStickerPickerTabBinding giphyStickerPickerTab;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView submit;

    @NonNull
    public static FragmentGiphyStickerPickerTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentGiphyStickerPickerTabBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null && (viewA = ViewBindings.a(view, (i10 = R.id.giphy_sticker_picker_page))) != null) {
            GiphyStickerPickerPageBinding giphyStickerPickerPageBindingBind = GiphyStickerPickerPageBinding.bind(viewA);
            i10 = R.id.giphy_sticker_picker_tab;
            View viewA2 = ViewBindings.a(view, i10);
            if (viewA2 != null) {
                GiphyStickerPickerTabBinding giphyStickerPickerTabBindingBind = GiphyStickerPickerTabBinding.bind(viewA2);
                i10 = R.id.submit;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                if (imageView2 != null) {
                    return new FragmentGiphyStickerPickerTabBinding((LinearLayout) view, imageView, giphyStickerPickerPageBindingBind, giphyStickerPickerTabBindingBind, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentGiphyStickerPickerTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_giphy_sticker_picker_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentGiphyStickerPickerTabBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull GiphyStickerPickerPageBinding giphyStickerPickerPageBinding, @NonNull GiphyStickerPickerTabBinding giphyStickerPickerTabBinding, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.close = imageView;
        this.giphyStickerPickerPage = giphyStickerPickerPageBinding;
        this.giphyStickerPickerTab = giphyStickerPickerTabBinding;
        this.submit = imageView2;
    }
}
