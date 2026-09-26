package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AppendEditText;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewCodeEditBinding implements ViewBinding {

    @NonNull
    public final LinearLayout codeLayout;

    @NonNull
    public final View divider;

    @NonNull
    public final AppendEditText edit;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public static ViewCodeEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ViewCodeEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.view_code_edit, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ViewCodeEditBinding(@NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull AppendEditText appendEditText) {
        this.rootView = constraintLayout;
        this.codeLayout = linearLayout;
        this.divider = view;
        this.edit = appendEditText;
    }

    @NonNull
    public static ViewCodeEditBinding bind(@NonNull View view) {
        int i10 = R.id.code_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.code_layout);
        if (linearLayout != null) {
            i10 = R.id.divider;
            View viewA = ViewBindings.a(view, R.id.divider);
            if (viewA != null) {
                i10 = R.id.edit;
                AppendEditText appendEditText = (AppendEditText) ViewBindings.a(view, R.id.edit);
                if (appendEditText != null) {
                    return new ViewCodeEditBinding((ConstraintLayout) view, linearLayout, viewA, appendEditText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
