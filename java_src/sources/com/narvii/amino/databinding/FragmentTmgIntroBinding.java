package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentTmgIntroBinding implements ViewBinding {

    @NonNull
    public final ImageView current1;

    @NonNull
    public final ImageView current2;

    @NonNull
    public final ImageView current3;

    @NonNull
    public final LinearLayout currentItem;

    @NonNull
    public final ViewPager pager;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentTmgIntroBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentTmgIntroBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_tmg_intro, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentTmgIntroBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull ViewPager viewPager) {
        this.rootView = linearLayout;
        this.current1 = imageView;
        this.current2 = imageView2;
        this.current3 = imageView3;
        this.currentItem = linearLayout2;
        this.pager = viewPager;
    }

    @NonNull
    public static FragmentTmgIntroBinding bind(@NonNull View view) {
        int i10 = R.id.current_1;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.current_1);
        if (imageView != null) {
            i10 = R.id.current_2;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.current_2);
            if (imageView2 != null) {
                i10 = R.id.current_3;
                ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.current_3);
                if (imageView3 != null) {
                    i10 = R.id.current_item;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.current_item);
                    if (linearLayout != null) {
                        i10 = R.id.pager;
                        ViewPager viewPager = (ViewPager) ViewBindings.a(view, R.id.pager);
                        if (viewPager != null) {
                            return new FragmentTmgIntroBinding((LinearLayout) view, imageView, imageView2, imageView3, linearLayout, viewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
