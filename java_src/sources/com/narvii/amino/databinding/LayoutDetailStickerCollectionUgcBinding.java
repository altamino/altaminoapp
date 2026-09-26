package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutDetailStickerCollectionUgcBinding implements ViewBinding {

    @NonNull
    public final TextView accept;

    @NonNull
    public final LinearLayout approveLayout;

    @NonNull
    public final OverlayListPlaceholder overlay;

    @NonNull
    public final TextView reject;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView submit;

    @NonNull
    public final LinearLayout submitLayout;

    @NonNull
    public static LayoutDetailStickerCollectionUgcBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutDetailStickerCollectionUgcBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_detail_sticker_collection_ugc, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutDetailStickerCollectionUgcBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2) {
        this.rootView = frameLayout;
        this.accept = textView;
        this.approveLayout = linearLayout;
        this.overlay = overlayListPlaceholder;
        this.reject = textView2;
        this.submit = textView3;
        this.submitLayout = linearLayout2;
    }

    @NonNull
    public static LayoutDetailStickerCollectionUgcBinding bind(@NonNull View view) {
        int i10 = R.id.accept;
        TextView textView = (TextView) ViewBindings.a(view, R.id.accept);
        if (textView != null) {
            i10 = R.id.approve_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.approve_layout);
            if (linearLayout != null) {
                i10 = R.id.overlay;
                OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.overlay);
                if (overlayListPlaceholder != null) {
                    i10 = R.id.reject;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.reject);
                    if (textView2 != null) {
                        i10 = R.id.submit;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.submit);
                        if (textView3 != null) {
                            i10 = R.id.submit_layout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.submit_layout);
                            if (linearLayout2 != null) {
                                return new LayoutDetailStickerCollectionUgcBinding((FrameLayout) view, textView, linearLayout, overlayListPlaceholder, textView2, textView3, linearLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
