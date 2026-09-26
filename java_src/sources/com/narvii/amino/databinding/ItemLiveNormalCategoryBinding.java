package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.amino.speeddial.LiveCategoryItemView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemLiveNormalCategoryBinding implements ViewBinding {

    @NonNull
    public final LinearLayout activeMemberContainer;

    @NonNull
    public final NVImageView liveIndicator;

    @NonNull
    public final TextView memberCount;

    @NonNull
    public final LiveCategoryItemView normalItem;

    @NonNull
    private final LiveCategoryItemView rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemLiveNormalCategoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveCategoryItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemLiveNormalCategoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_live_normal_category, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemLiveNormalCategoryBinding(@NonNull LiveCategoryItemView liveCategoryItemView, @NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull LiveCategoryItemView liveCategoryItemView2, @NonNull TextView textView2) {
        this.rootView = liveCategoryItemView;
        this.activeMemberContainer = linearLayout;
        this.liveIndicator = nVImageView;
        this.memberCount = textView;
        this.normalItem = liveCategoryItemView2;
        this.title = textView2;
    }

    @NonNull
    public static ItemLiveNormalCategoryBinding bind(@NonNull View view) {
        int i10 = R.id.active_member_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.active_member_container);
        if (linearLayout != null) {
            i10 = R.id.live_indicator;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.live_indicator);
            if (nVImageView != null) {
                i10 = R.id.member_count;
                TextView textView = (TextView) ViewBindings.a(view, R.id.member_count);
                if (textView != null) {
                    LiveCategoryItemView liveCategoryItemView = (LiveCategoryItemView) view;
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new ItemLiveNormalCategoryBinding(liveCategoryItemView, linearLayout, nVImageView, textView, liveCategoryItemView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
