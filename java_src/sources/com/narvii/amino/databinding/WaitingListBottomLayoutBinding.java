package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.scene.view.NVContentCoordinateLayout;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class WaitingListBottomLayoutBinding implements ViewBinding {

    @NonNull
    public final FlexLayout behaviorLayout;

    @NonNull
    public final RadiusLayout bottomSheetContainer;

    @NonNull
    public final View outArea;

    @NonNull
    private final NVContentCoordinateLayout rootView;

    @NonNull
    public static WaitingListBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVContentCoordinateLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WaitingListBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.waiting_list_bottom_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WaitingListBottomLayoutBinding(@NonNull NVContentCoordinateLayout nVContentCoordinateLayout, @NonNull FlexLayout flexLayout, @NonNull RadiusLayout radiusLayout, @NonNull View view) {
        this.rootView = nVContentCoordinateLayout;
        this.behaviorLayout = flexLayout;
        this.bottomSheetContainer = radiusLayout;
        this.outArea = view;
    }

    @NonNull
    public static WaitingListBottomLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.behavior_layout;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.behavior_layout);
        if (flexLayout != null) {
            i10 = R.id.bottom_sheet_container;
            RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, R.id.bottom_sheet_container);
            if (radiusLayout != null) {
                i10 = R.id.out_area;
                View viewA = ViewBindings.a(view, R.id.out_area);
                if (viewA != null) {
                    return new WaitingListBottomLayoutBinding((NVContentCoordinateLayout) view, flexLayout, radiusLayout, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
