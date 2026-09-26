package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogFilterGlobalPostBinding implements ViewBinding {

    @NonNull
    public final TextView apply;

    @NonNull
    public final ImageView blank;

    @NonNull
    public final FontAwesomeView checkRecent;

    @NonNull
    public final FontAwesomeView checkRelevant;

    @NonNull
    public final LinearLayout filterLayout;

    @NonNull
    public final LinearLayout mostRecentLayout;

    @NonNull
    public final LinearLayout mostRelevantLayout;

    @NonNull
    public final CheckBox myAminoCheckbox;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView textMostRecent;

    @NonNull
    public final TextView textRelevant;

    @NonNull
    public final FrameLayout toggleLayout;

    @NonNull
    public static DialogFilterGlobalPostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogFilterGlobalPostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_filter_global_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogFilterGlobalPostBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull CheckBox checkBox, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.apply = textView;
        this.blank = imageView;
        this.checkRecent = fontAwesomeView;
        this.checkRelevant = fontAwesomeView2;
        this.filterLayout = linearLayout;
        this.mostRecentLayout = linearLayout2;
        this.mostRelevantLayout = linearLayout3;
        this.myAminoCheckbox = checkBox;
        this.textMostRecent = textView2;
        this.textRelevant = textView3;
        this.toggleLayout = frameLayout2;
    }

    @NonNull
    public static DialogFilterGlobalPostBinding bind(@NonNull View view) {
        int i10 = R.id.apply;
        TextView textView = (TextView) ViewBindings.a(view, R.id.apply);
        if (textView != null) {
            i10 = R.id.blank;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.blank);
            if (imageView != null) {
                i10 = R.id.check_recent;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.check_recent);
                if (fontAwesomeView != null) {
                    i10 = R.id.check_relevant;
                    FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.check_relevant);
                    if (fontAwesomeView2 != null) {
                        i10 = R.id.filter_layout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.filter_layout);
                        if (linearLayout != null) {
                            i10 = R.id.most_recent_layout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.most_recent_layout);
                            if (linearLayout2 != null) {
                                i10 = R.id.most_relevant_layout;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.most_relevant_layout);
                                if (linearLayout3 != null) {
                                    i10 = R.id.my_amino_checkbox;
                                    CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.my_amino_checkbox);
                                    if (checkBox != null) {
                                        i10 = R.id.text_most_recent;
                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.text_most_recent);
                                        if (textView2 != null) {
                                            i10 = R.id.text_relevant;
                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.text_relevant);
                                            if (textView3 != null) {
                                                i10 = R.id.toggle_layout;
                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.toggle_layout);
                                                if (frameLayout != null) {
                                                    return new DialogFilterGlobalPostBinding((FrameLayout) view, textView, imageView, fontAwesomeView, fontAwesomeView2, linearLayout, linearLayout2, linearLayout3, checkBox, textView2, textView3, frameLayout);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
