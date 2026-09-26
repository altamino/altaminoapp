package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.store.HeaderLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class MonetizationStoreSectionHeaderBinding implements ViewBinding {

    @NonNull
    public final HeaderLayout headerLayout;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public final ImageView storeSectionIcon;

    @NonNull
    public final TextView storeSectionTitle;

    @NonNull
    public final FrameLayout storeSectionTitleWrapper;

    @NonNull
    public static MonetizationStoreSectionHeaderBinding bind(@NonNull View view) {
        HeaderLayout headerLayout = (HeaderLayout) view;
        int i10 = R.id.store_section_icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.store_section_icon);
        if (imageView != null) {
            i10 = R.id.store_section_title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.store_section_title);
            if (textView != null) {
                i10 = R.id.store_section_title_wrapper;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.store_section_title_wrapper);
                if (frameLayout != null) {
                    return new MonetizationStoreSectionHeaderBinding(headerLayout, headerLayout, imageView, textView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MonetizationStoreSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_section_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreSectionHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull HeaderLayout headerLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout) {
        this.rootView = headerLayout;
        this.headerLayout = headerLayout2;
        this.storeSectionIcon = imageView;
        this.storeSectionTitle = textView;
        this.storeSectionTitleWrapper = frameLayout;
    }
}
