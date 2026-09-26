package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.util.text.MyEditText;

/* JADX INFO: loaded from: classes11.dex */
public final class EditTextLayoutBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final MyEditText text;

    @NonNull
    public static EditTextLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static EditTextLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.edit_text_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private EditTextLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull MyEditText myEditText) {
        this.rootView = linearLayout;
        this.text = myEditText;
    }

    @NonNull
    public static EditTextLayoutBinding bind(@NonNull View view) {
        MyEditText myEditText = (MyEditText) ViewBindings.a(view, R.id.text);
        if (myEditText != null) {
            return new EditTextLayoutBinding((LinearLayout) view, myEditText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }
}
