package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemChoiceLayoutBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView choiceIndicator;

    @NonNull
    public final TextView choiceName;

    @NonNull
    public final View divider;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static ItemChoiceLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemChoiceLayoutBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.choice_indicator;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
        if (fontAwesomeView != null) {
            i10 = R.id.choice_name;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null && (viewA = ViewBindings.a(view, (i10 = R.id.divider))) != null) {
                return new ItemChoiceLayoutBinding((RelativeLayout) view, fontAwesomeView, textView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemChoiceLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_choice_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemChoiceLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView, @NonNull View view) {
        this.rootView = relativeLayout;
        this.choiceIndicator = fontAwesomeView;
        this.choiceName = textView;
        this.divider = view;
    }
}
