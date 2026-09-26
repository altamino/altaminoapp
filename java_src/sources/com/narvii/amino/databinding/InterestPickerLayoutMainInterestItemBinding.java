package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class InterestPickerLayoutMainInterestItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView image;

    @NonNull
    public final ImageView pickedCheck;

    @NonNull
    private final RadiusLayout rootView;

    @NonNull
    public final AutoSizingTextView title;

    @NonNull
    public static InterestPickerLayoutMainInterestItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RadiusLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerLayoutMainInterestItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_layout_main_interest_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerLayoutMainInterestItemBinding(@NonNull RadiusLayout radiusLayout, @NonNull NVImageView nVImageView, @NonNull ImageView imageView, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = radiusLayout;
        this.image = nVImageView;
        this.pickedCheck = imageView;
        this.title = autoSizingTextView;
    }

    @NonNull
    public static InterestPickerLayoutMainInterestItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
        if (nVImageView != null) {
            i10 = R.id.picked_check;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.picked_check);
            if (imageView != null) {
                i10 = R.id.title;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.title);
                if (autoSizingTextView != null) {
                    return new InterestPickerLayoutMainInterestItemBinding((RadiusLayout) view, nVImageView, imageView, autoSizingTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
