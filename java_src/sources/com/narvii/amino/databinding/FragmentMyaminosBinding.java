package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.master.widget.MasterTabPlaceHolder;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentMyaminosBinding implements ViewBinding {

    @NonNull
    public final LinearLayout rootLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final MasterTabPlaceHolder searchBarPlaceholder;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static FragmentMyaminosBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.search_bar_placeholder;
        MasterTabPlaceHolder masterTabPlaceHolder = (MasterTabPlaceHolder) ViewBindings.a(view, R.id.search_bar_placeholder);
        if (masterTabPlaceHolder != null) {
            i10 = R.id.tabs;
            NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
            if (nVPagerTabLayout != null) {
                i10 = R.id.viewpager;
                NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                if (nVViewPager != null) {
                    return new FragmentMyaminosBinding(linearLayout, linearLayout, masterTabPlaceHolder, nVPagerTabLayout, nVViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentMyaminosBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMyaminosBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_myaminos, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMyaminosBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull MasterTabPlaceHolder masterTabPlaceHolder, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = linearLayout;
        this.rootLayout = linearLayout2;
        this.searchBarPlaceholder = masterTabPlaceHolder;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }
}
