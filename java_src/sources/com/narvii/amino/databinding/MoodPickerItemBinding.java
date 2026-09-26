package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class MoodPickerItemBinding implements ViewBinding {

    @NonNull
    public final ImageView icon;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public static MoodPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoodPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.mood_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoodPickerItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.icon = imageView;
        this.stub1 = view;
    }

    @NonNull
    public static MoodPickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
        if (imageView != null) {
            i10 = R.id.stub1;
            View viewA = ViewBindings.a(view, R.id.stub1);
            if (viewA != null) {
                return new MoodPickerItemBinding((FrameLayout) view, imageView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
