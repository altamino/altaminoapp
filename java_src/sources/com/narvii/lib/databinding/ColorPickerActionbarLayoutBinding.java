package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public final class ColorPickerActionbarLayoutBinding implements ViewBinding {

    @NonNull
    public final EditText colorInput;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ColorPickerActionbarLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ColorPickerActionbarLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.color_input;
        EditText editText = (EditText) ViewBindings.a(view, i10);
        if (editText != null) {
            return new ColorPickerActionbarLayoutBinding((LinearLayout) view, editText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ColorPickerActionbarLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.color_picker_actionbar_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ColorPickerActionbarLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.colorInput = editText;
    }
}
