package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class DrawerSecondEntriesLayoutBinding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public final FlexLayout secondEntriesContainer;

    @NonNull
    public final TextView secondEntriesHint;

    @NonNull
    public final ImageView secondEntriesIndicator;

    @NonNull
    public final ViewStub secondEntriesStub;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerSecondEntriesLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.drawer_second_entries_layout, viewGroup);
        return bind(viewGroup);
    }

    private DrawerSecondEntriesLayoutBinding(@NonNull View view, @NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ViewStub viewStub) {
        this.rootView = view;
        this.secondEntriesContainer = flexLayout;
        this.secondEntriesHint = textView;
        this.secondEntriesIndicator = imageView;
        this.secondEntriesStub = viewStub;
    }

    @NonNull
    public static DrawerSecondEntriesLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.second_entries_container;
        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.second_entries_container);
        if (flexLayout != null) {
            i10 = R.id.second_entries_hint;
            TextView textView = (TextView) ViewBindings.a(view, R.id.second_entries_hint);
            if (textView != null) {
                i10 = R.id.second_entries_indicator;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.second_entries_indicator);
                if (imageView != null) {
                    i10 = R.id.second_entries_stub;
                    ViewStub viewStub = (ViewStub) ViewBindings.a(view, R.id.second_entries_stub);
                    if (viewStub != null) {
                        return new DrawerSecondEntriesLayoutBinding(view, flexLayout, textView, imageView, viewStub);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
