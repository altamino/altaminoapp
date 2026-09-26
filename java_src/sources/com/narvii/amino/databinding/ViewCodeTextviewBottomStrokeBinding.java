package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewCodeTextviewBottomStrokeBinding implements ViewBinding {

    @NonNull
    public final TextView codeText;

    @NonNull
    public final View cursor;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public static ViewCodeTextviewBottomStrokeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ViewCodeTextviewBottomStrokeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.view_code_textview_bottom_stroke, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ViewCodeTextviewBottomStrokeBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull View view) {
        this.rootView = constraintLayout;
        this.codeText = textView;
        this.cursor = view;
    }

    @NonNull
    public static ViewCodeTextviewBottomStrokeBinding bind(@NonNull View view) {
        int i10 = R.id.code_text;
        TextView textView = (TextView) ViewBindings.a(view, R.id.code_text);
        if (textView != null) {
            i10 = R.id.cursor;
            View viewA = ViewBindings.a(view, R.id.cursor);
            if (viewA != null) {
                return new ViewCodeTextviewBottomStrokeBinding((ConstraintLayout) view, textView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
