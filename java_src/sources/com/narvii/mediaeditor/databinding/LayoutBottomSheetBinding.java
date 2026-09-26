package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.NVContentCoordinateLayout;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutBottomSheetBinding implements ViewBinding {

    @NonNull
    public final FlexLayout behaviorLayout;

    @NonNull
    public final RadiusLayout bottomSheetContainer;

    @NonNull
    public final View outArea;

    @NonNull
    private final NVContentCoordinateLayout rootView;

    @NonNull
    public static LayoutBottomSheetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVContentCoordinateLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutBottomSheetBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.behavior_layout;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
        if (flexLayout != null) {
            i10 = R.id.bottom_sheet_container;
            RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
            if (radiusLayout != null && (viewA = ViewBindings.a(view, (i10 = R.id.out_area))) != null) {
                return new LayoutBottomSheetBinding((NVContentCoordinateLayout) view, flexLayout, radiusLayout, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static LayoutBottomSheetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_bottom_sheet, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutBottomSheetBinding(@NonNull NVContentCoordinateLayout nVContentCoordinateLayout, @NonNull FlexLayout flexLayout, @NonNull RadiusLayout radiusLayout, @NonNull View view) {
        this.rootView = nVContentCoordinateLayout;
        this.behaviorLayout = flexLayout;
        this.bottomSheetContainer = radiusLayout;
        this.outArea = view;
    }
}
