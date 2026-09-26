package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TimePicker;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DeliveryTimePickerBinding implements ViewBinding {

    @NonNull
    public final DatePicker datePicker;

    @NonNull
    public final LinearLayout picker;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TimePicker timePicker;

    @NonNull
    public static DeliveryTimePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DeliveryTimePickerBinding bind(@NonNull View view) {
        int i10 = R.id.date_picker;
        DatePicker datePicker = (DatePicker) ViewBindings.a(view, i10);
        if (datePicker != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i11 = R.id.time_picker;
            TimePicker timePicker = (TimePicker) ViewBindings.a(view, i11);
            if (timePicker != null) {
                return new DeliveryTimePickerBinding(linearLayout, datePicker, linearLayout, timePicker);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DeliveryTimePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.delivery_time_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DeliveryTimePickerBinding(@NonNull LinearLayout linearLayout, @NonNull DatePicker datePicker, @NonNull LinearLayout linearLayout2, @NonNull TimePicker timePicker) {
        this.rootView = linearLayout;
        this.datePicker = datePicker;
        this.picker = linearLayout2;
        this.timePicker = timePicker;
    }
}
