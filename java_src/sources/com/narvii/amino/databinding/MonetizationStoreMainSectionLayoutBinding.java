package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class MonetizationStoreMainSectionLayoutBinding implements ViewBinding {

    @NonNull
    public final GridLayout itemGridLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVImageView storeSectionIcon;

    @NonNull
    public final Button storeSectionSeeAllButton;

    @NonNull
    public final TextView storeSectionTitle;

    @NonNull
    public final LinearLayout storeSectionTitleLayout;

    @NonNull
    public static MonetizationStoreMainSectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreMainSectionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_main_section_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreMainSectionLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull GridLayout gridLayout, @NonNull NVImageView nVImageView, @NonNull Button button, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.itemGridLayout = gridLayout;
        this.storeSectionIcon = nVImageView;
        this.storeSectionSeeAllButton = button;
        this.storeSectionTitle = textView;
        this.storeSectionTitleLayout = linearLayout2;
    }

    @NonNull
    public static MonetizationStoreMainSectionLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.item_grid_layout;
        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.item_grid_layout);
        if (gridLayout != null) {
            i10 = R.id.store_section_icon;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.store_section_icon);
            if (nVImageView != null) {
                i10 = R.id.store_section_see_all_button;
                Button button = (Button) ViewBindings.a(view, R.id.store_section_see_all_button);
                if (button != null) {
                    i10 = R.id.store_section_title;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.store_section_title);
                    if (textView != null) {
                        i10 = R.id.store_section_title_layout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.store_section_title_layout);
                        if (linearLayout != null) {
                            return new MonetizationStoreMainSectionLayoutBinding((LinearLayout) view, gridLayout, nVImageView, button, textView, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
