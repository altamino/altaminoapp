package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes11.dex */
public final class DialogFlagItemBinding implements ViewBinding {

    @NonNull
    public final View flagItemDivider;

    @NonNull
    public final TextView flagName;

    @NonNull
    public final TextView flagNameHint;

    @NonNull
    public final FontAwesomeView flagRightCheck1;

    @NonNull
    public final CheckBox flagRightCheck2;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogFlagItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogFlagItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_flag_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogFlagItemBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FontAwesomeView fontAwesomeView, @NonNull CheckBox checkBox) {
        this.rootView = linearLayout;
        this.flagItemDivider = view;
        this.flagName = textView;
        this.flagNameHint = textView2;
        this.flagRightCheck1 = fontAwesomeView;
        this.flagRightCheck2 = checkBox;
    }

    @NonNull
    public static DialogFlagItemBinding bind(@NonNull View view) {
        int i10 = R.id.flag_item_divider;
        View viewA = ViewBindings.a(view, R.id.flag_item_divider);
        if (viewA != null) {
            i10 = R.id.flag_name;
            TextView textView = (TextView) ViewBindings.a(view, R.id.flag_name);
            if (textView != null) {
                i10 = R.id.flag_name_hint;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.flag_name_hint);
                if (textView2 != null) {
                    i10 = R.id.flag_right_check_1;
                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.flag_right_check_1);
                    if (fontAwesomeView != null) {
                        i10 = R.id.flag_right_check_2;
                        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.flag_right_check_2);
                        if (checkBox != null) {
                            return new DialogFlagItemBinding((LinearLayout) view, viewA, textView, textView2, fontAwesomeView, checkBox);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
