package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentCaptionTabBinding implements ViewBinding {

    @NonNull
    public final CaptionTabItemBinding captionTabKeyboard;

    @NonNull
    public final ImageView close;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ImageView submit;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static FragmentCaptionTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCaptionTabBinding bind(@NonNull View view) {
        int i10 = R.id.caption_tab_keyboard;
        View viewA = ViewBindings.a(view, i10);
        if (viewA != null) {
            CaptionTabItemBinding captionTabItemBindingBind = CaptionTabItemBinding.bind(viewA);
            i10 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
            if (imageView != null) {
                i10 = R.id.submit;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                if (imageView2 != null) {
                    i10 = R.id.tabs;
                    NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, i10);
                    if (nVPagerTabLayout != null) {
                        i10 = R.id.viewpager;
                        NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, i10);
                        if (nVViewPager != null) {
                            return new FragmentCaptionTabBinding((FrameLayout) view, captionTabItemBindingBind, imageView, imageView2, nVPagerTabLayout, nVViewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentCaptionTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_caption_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCaptionTabBinding(@NonNull FrameLayout frameLayout, @NonNull CaptionTabItemBinding captionTabItemBinding, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.captionTabKeyboard = captionTabItemBinding;
        this.close = imageView;
        this.submit = imageView2;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }
}
