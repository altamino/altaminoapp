package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.ShareMediaBar;

/* JADX INFO: loaded from: classes5.dex */
public final class GalleryLayoutBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout overlay;

    @NonNull
    public final NVViewPager pager;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ShareMediaBar shareMediaBar;

    @NonNull
    public final TextView text;

    @NonNull
    public static GalleryLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GalleryLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.overlay;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
        if (relativeLayout != null) {
            i10 = R.id.pager;
            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, i10);
            if (nVViewPager != null) {
                i10 = R.id.share_media_bar;
                ShareMediaBar shareMediaBar = (ShareMediaBar) ViewBindings.a(view, i10);
                if (shareMediaBar != null) {
                    i10 = R.id.text;
                    TextView textView = (TextView) ViewBindings.a(view, i10);
                    if (textView != null) {
                        return new GalleryLayoutBinding((FrameLayout) view, relativeLayout, nVViewPager, shareMediaBar, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static GalleryLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.gallery_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GalleryLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull NVViewPager nVViewPager, @NonNull ShareMediaBar shareMediaBar, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.overlay = relativeLayout;
        this.pager = nVViewPager;
        this.shareMediaBar = shareMediaBar;
        this.text = textView;
    }
}
