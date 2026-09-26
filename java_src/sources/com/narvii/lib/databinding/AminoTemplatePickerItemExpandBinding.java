package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes7.dex */
public final class AminoTemplatePickerItemExpandBinding implements ViewBinding {

    @NonNull
    public final PushButton createPushButton;

    @NonNull
    public final AutoSizingTextView createText;

    @NonNull
    public final TextView desc;

    @NonNull
    public final LinearLayout expand;

    @NonNull
    public final LinearLayout featuresLayout;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView subTitle;

    @NonNull
    public final TextView title;

    @NonNull
    public static AminoTemplatePickerItemExpandBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AminoTemplatePickerItemExpandBinding bind(@NonNull View view) {
        int i10 = R.id.create_push_button;
        PushButton pushButton = (PushButton) ViewBindings.a(view, i10);
        if (pushButton != null) {
            i10 = R.id.create_text;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
            if (autoSizingTextView != null) {
                i10 = R.id.desc;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i10 = R.id.features_layout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout2 != null) {
                        i10 = R.id.icon;
                        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                        if (imageView != null) {
                            i10 = R.id.subTitle;
                            TextView textView2 = (TextView) ViewBindings.a(view, i10);
                            if (textView2 != null) {
                                i10 = R.id.title;
                                TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                if (textView3 != null) {
                                    return new AminoTemplatePickerItemExpandBinding(linearLayout, pushButton, autoSizingTextView, textView, linearLayout, linearLayout2, imageView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static AminoTemplatePickerItemExpandBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.amino_template_picker_item_expand, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AminoTemplatePickerItemExpandBinding(@NonNull LinearLayout linearLayout, @NonNull PushButton pushButton, @NonNull AutoSizingTextView autoSizingTextView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.createPushButton = pushButton;
        this.createText = autoSizingTextView;
        this.desc = textView;
        this.expand = linearLayout2;
        this.featuresLayout = linearLayout3;
        this.icon = imageView;
        this.subTitle = textView2;
        this.title = textView3;
    }
}
