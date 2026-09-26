package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.StickerCollectionSourceView;
import com.narvii.widget.CommunityIconView;

/* JADX INFO: loaded from: classes5.dex */
public final class StickerPackItemAuthorLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView meIcon;

    @NonNull
    private final StickerCollectionSourceView rootView;

    @NonNull
    public final CommunityIconView sourceIcon;

    @NonNull
    public final LinearLayout sourceLayout;

    @NonNull
    public final TextView sourceName;

    @NonNull
    public final StickerCollectionSourceView sourceView;

    @NonNull
    public static StickerPackItemAuthorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StickerCollectionSourceView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPackItemAuthorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_pack_item_author_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPackItemAuthorLayoutBinding(@NonNull StickerCollectionSourceView stickerCollectionSourceView, @NonNull ImageView imageView, @NonNull CommunityIconView communityIconView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull StickerCollectionSourceView stickerCollectionSourceView2) {
        this.rootView = stickerCollectionSourceView;
        this.meIcon = imageView;
        this.sourceIcon = communityIconView;
        this.sourceLayout = linearLayout;
        this.sourceName = textView;
        this.sourceView = stickerCollectionSourceView2;
    }

    @NonNull
    public static StickerPackItemAuthorLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.me_icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.me_icon);
        if (imageView != null) {
            i10 = R.id.source_icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.source_icon);
            if (communityIconView != null) {
                i10 = R.id.source_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.source_layout);
                if (linearLayout != null) {
                    i10 = R.id.source_name;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.source_name);
                    if (textView != null) {
                        StickerCollectionSourceView stickerCollectionSourceView = (StickerCollectionSourceView) view;
                        return new StickerPackItemAuthorLayoutBinding(stickerCollectionSourceView, imageView, communityIconView, linearLayout, textView, stickerCollectionSourceView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
