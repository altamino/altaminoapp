package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.NumberPicker;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class NumberPickerDialogBinding implements ViewBinding {

    @NonNull
    public final NumberPicker numberPicker;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static NumberPickerDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NumberPickerDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.number_picker_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NumberPickerDialogBinding(@NonNull FrameLayout frameLayout, @NonNull NumberPicker numberPicker) {
        this.rootView = frameLayout;
        this.numberPicker = numberPicker;
    }

    @NonNull
    public static NumberPickerDialogBinding bind(@NonNull View view) {
        NumberPicker numberPicker = (NumberPicker) ViewBindings.a(view, R.id.number_picker);
        if (numberPicker != null) {
            return new NumberPickerDialogBinding((FrameLayout) view, numberPicker);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.number_picker)));
    }
}
