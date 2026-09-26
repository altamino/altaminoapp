package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.master.widget.MasterBottomItemView;

/* JADX INFO: loaded from: classes7.dex */
public final class IncubatorTabItemLayoutBinding implements ViewBinding {

    @NonNull
    public final View badge;

    @NonNull
    private final MasterBottomItemView rootView;

    @NonNull
    public final ImageView tabIcon;

    @NonNull
    public final ImageView tabIconSelected;

    @NonNull
    public final ImageView tabIconTmp;

    @NonNull
    public final TextView tabTitle;

    @NonNull
    public static IncubatorTabItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public MasterBottomItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorTabItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_tab_item_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorTabItemLayoutBinding(@NonNull MasterBottomItemView masterBottomItemView, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView) {
        this.rootView = masterBottomItemView;
        this.badge = view;
        this.tabIcon = imageView;
        this.tabIconSelected = imageView2;
        this.tabIconTmp = imageView3;
        this.tabTitle = textView;
    }

    @NonNull
    public static IncubatorTabItemLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        View viewA = ViewBindings.a(view, R.id.badge);
        if (viewA != null) {
            i10 = R.id.tab_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.tab_icon);
            if (imageView != null) {
                i10 = R.id.tab_icon_selected;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.tab_icon_selected);
                if (imageView2 != null) {
                    i10 = R.id.tab_icon_tmp;
                    ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.tab_icon_tmp);
                    if (imageView3 != null) {
                        i10 = R.id.tab_title;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.tab_title);
                        if (textView != null) {
                            return new IncubatorTabItemLayoutBinding((MasterBottomItemView) view, viewA, imageView, imageView2, imageView3, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
