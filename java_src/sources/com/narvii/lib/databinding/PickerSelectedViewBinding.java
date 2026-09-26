package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class PickerSelectedViewBinding implements ViewBinding {

    @NonNull
    public final ImageView image;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PickerSelectedViewBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new PickerSelectedViewBinding(view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PickerSelectedViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.picker_selected_view, viewGroup);
        return bind(viewGroup);
    }

    private PickerSelectedViewBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = view;
        this.image = imageView;
        this.title = textView;
    }
}
