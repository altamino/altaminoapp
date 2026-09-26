package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.Flipper;

/* JADX INFO: loaded from: classes11.dex */
public final class IncubatorFeaturedItemTopBinding implements ViewBinding {

    @NonNull
    public final Flipper flipper;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static IncubatorFeaturedItemTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorFeaturedItemTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_featured_item_top, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorFeaturedItemTopBinding(@NonNull LinearLayout linearLayout, @NonNull Flipper flipper) {
        this.rootView = linearLayout;
        this.flipper = flipper;
    }

    @NonNull
    public static IncubatorFeaturedItemTopBinding bind(@NonNull View view) {
        Flipper flipper = (Flipper) ViewBindings.a(view, R.id.flipper);
        if (flipper != null) {
            return new IncubatorFeaturedItemTopBinding((LinearLayout) view, flipper);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.flipper)));
    }
}
