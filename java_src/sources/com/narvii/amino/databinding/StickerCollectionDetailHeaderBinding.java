package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.collection.HeaderLayout;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class StickerCollectionDetailHeaderBinding implements ViewBinding {

    @NonNull
    public final NVImageView banner;

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final StickerImageView collectionIcon;

    @NonNull
    public final HeaderLayout detailHeader;

    @NonNull
    public final View gradient;

    @NonNull
    public final FrameLayout iconBg;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public static StickerCollectionDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerCollectionDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_collection_detail_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerCollectionDetailHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull NVImageView nVImageView, @NonNull RealtimeBlurView realtimeBlurView, @NonNull StickerImageView stickerImageView, @NonNull HeaderLayout headerLayout2, @NonNull View view, @NonNull FrameLayout frameLayout) {
        this.rootView = headerLayout;
        this.banner = nVImageView;
        this.blur = realtimeBlurView;
        this.collectionIcon = stickerImageView;
        this.detailHeader = headerLayout2;
        this.gradient = view;
        this.iconBg = frameLayout;
    }

    @NonNull
    public static StickerCollectionDetailHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.banner;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.banner);
        if (nVImageView != null) {
            i10 = R.id.blur;
            RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
            if (realtimeBlurView != null) {
                i10 = R.id.collection_icon;
                StickerImageView stickerImageView = (StickerImageView) ViewBindings.a(view, R.id.collection_icon);
                if (stickerImageView != null) {
                    HeaderLayout headerLayout = (HeaderLayout) view;
                    i10 = R.id.gradient;
                    View viewA = ViewBindings.a(view, R.id.gradient);
                    if (viewA != null) {
                        i10 = R.id.icon_bg;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.icon_bg);
                        if (frameLayout != null) {
                            return new StickerCollectionDetailHeaderBinding(headerLayout, nVImageView, realtimeBlurView, stickerImageView, headerLayout, viewA, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
