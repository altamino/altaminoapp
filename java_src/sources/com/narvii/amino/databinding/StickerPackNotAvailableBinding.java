package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes3.dex */
public final class StickerPackNotAvailableBinding implements ViewBinding {

    @NonNull
    public final LinearLayout notAvailableLayout;

    @NonNull
    public final TextView notAvailableText;

    @NonNull
    public final TextView removeStickerPack;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static StickerPackNotAvailableBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.not_available_text;
        TextView textView = (TextView) ViewBindings.a(view, R.id.not_available_text);
        if (textView != null) {
            i10 = R.id.remove_sticker_pack;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.remove_sticker_pack);
            if (textView2 != null) {
                return new StickerPackNotAvailableBinding(linearLayout, linearLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static StickerPackNotAvailableBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPackNotAvailableBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_pack_not_available, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPackNotAvailableBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.notAvailableLayout = linearLayout2;
        this.notAvailableText = textView;
        this.removeStickerPack = textView2;
    }
}
