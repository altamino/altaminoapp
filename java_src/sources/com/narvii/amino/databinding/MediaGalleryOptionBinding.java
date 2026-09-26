package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.ShareMediaBar;

/* JADX INFO: loaded from: classes7.dex */
public final class MediaGalleryOptionBinding implements ViewBinding {

    @NonNull
    public final ImageView actionbarBack;

    @NonNull
    public final FontAwesomeView actionbarOps;

    @NonNull
    public final FrameLayout optionMenuContainer;

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
    public static MediaGalleryOptionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaGalleryOptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_gallery_option, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaGalleryOptionBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull FrameLayout frameLayout2, @NonNull RelativeLayout relativeLayout, @NonNull NVViewPager nVViewPager, @NonNull ShareMediaBar shareMediaBar, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.actionbarBack = imageView;
        this.actionbarOps = fontAwesomeView;
        this.optionMenuContainer = frameLayout2;
        this.overlay = relativeLayout;
        this.pager = nVViewPager;
        this.shareMediaBar = shareMediaBar;
        this.text = textView;
    }

    @NonNull
    public static MediaGalleryOptionBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.actionbar_back);
        if (imageView != null) {
            i10 = R.id.actionbar_ops;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.actionbar_ops);
            if (fontAwesomeView != null) {
                i10 = R.id.option_menu_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.option_menu_container);
                if (frameLayout != null) {
                    i10 = R.id.overlay;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.overlay);
                    if (relativeLayout != null) {
                        i10 = R.id.pager;
                        NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.pager);
                        if (nVViewPager != null) {
                            i10 = R.id.share_media_bar;
                            ShareMediaBar shareMediaBar = (ShareMediaBar) ViewBindings.a(view, R.id.share_media_bar);
                            if (shareMediaBar != null) {
                                i10 = R.id.text;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                                if (textView != null) {
                                    return new MediaGalleryOptionBinding((FrameLayout) view, imageView, fontAwesomeView, frameLayout, relativeLayout, nVViewPager, shareMediaBar, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
