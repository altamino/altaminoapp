package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.HSVColorPickerView;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentUsertitleColorBinding implements ViewBinding {

    @NonNull
    public final HSVColorPickerView hsvColorPicker;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final RadiusLayout titlePreview;

    @NonNull
    public final TextView titleTv;

    @NonNull
    public static FragmentUsertitleColorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentUsertitleColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_usertitle_color, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentUsertitleColorBinding(@NonNull FlexLayout flexLayout, @NonNull HSVColorPickerView hSVColorPickerView, @NonNull RadiusLayout radiusLayout, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.hsvColorPicker = hSVColorPickerView;
        this.titlePreview = radiusLayout;
        this.titleTv = textView;
    }

    @NonNull
    public static FragmentUsertitleColorBinding bind(@NonNull View view) {
        int i10 = R.id.hsv_color_picker;
        HSVColorPickerView hSVColorPickerView = (HSVColorPickerView) ViewBindings.a(view, R.id.hsv_color_picker);
        if (hSVColorPickerView != null) {
            i10 = R.id.title_preview;
            RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, R.id.title_preview);
            if (radiusLayout != null) {
                i10 = R.id.title_tv;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title_tv);
                if (textView != null) {
                    return new FragmentUsertitleColorBinding((FlexLayout) view, hSVColorPickerView, radiusLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
