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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoScaleTextView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemGlobalAggregationBinding implements ViewBinding {

    @NonNull
    public final AutoScaleTextView globalNotificationCount;

    @NonNull
    public final ImageView globalSelectedIndicator;

    @NonNull
    public final LinearLayout iconLayout;

    @NonNull
    public final FlexLayout rootGlobalLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemGlobalAggregationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemGlobalAggregationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_global_aggregation, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemGlobalAggregationBinding(@NonNull FlexLayout flexLayout, @NonNull AutoScaleTextView autoScaleTextView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout2) {
        this.rootView = flexLayout;
        this.globalNotificationCount = autoScaleTextView;
        this.globalSelectedIndicator = imageView;
        this.iconLayout = linearLayout;
        this.rootGlobalLayout = flexLayout2;
    }

    @NonNull
    public static ItemGlobalAggregationBinding bind(@NonNull View view) {
        int i10 = R.id.global_notification_count;
        AutoScaleTextView autoScaleTextView = (AutoScaleTextView) ViewBindings.a(view, R.id.global_notification_count);
        if (autoScaleTextView != null) {
            i10 = R.id.global_selected_indicator;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.global_selected_indicator);
            if (imageView != null) {
                i10 = R.id.icon_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.icon_layout);
                if (linearLayout != null) {
                    FlexLayout flexLayout = (FlexLayout) view;
                    return new ItemGlobalAggregationBinding(flexLayout, autoScaleTextView, imageView, linearLayout, flexLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
