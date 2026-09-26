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

/* JADX INFO: loaded from: classes9.dex */
public final class AminoTemplatePickerItemCollapseBinding implements ViewBinding {

    @NonNull
    public final LinearLayout collapse;

    @NonNull
    public final ImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView subTitle;

    @NonNull
    public final TextView title;

    @NonNull
    public static AminoTemplatePickerItemCollapseBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.subTitle;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    return new AminoTemplatePickerItemCollapseBinding(linearLayout, linearLayout, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static AminoTemplatePickerItemCollapseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AminoTemplatePickerItemCollapseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.amino_template_picker_item_collapse, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AminoTemplatePickerItemCollapseBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.collapse = linearLayout2;
        this.icon = imageView;
        this.subTitle = textView;
        this.title = textView2;
    }
}
