package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class HangoutFilterViewBinding implements ViewBinding {

    @NonNull
    public final LinearLayout item1;

    @NonNull
    public final LinearLayout item2;

    @NonNull
    public final LinearLayout item3;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static HangoutFilterViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HangoutFilterViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.hangout_filter_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HangoutFilterViewBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.item1 = linearLayout;
        this.item2 = linearLayout2;
        this.item3 = linearLayout3;
    }

    @NonNull
    public static HangoutFilterViewBinding bind(@NonNull View view) {
        int i10 = R.id.item1;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.item1);
        if (linearLayout != null) {
            i10 = R.id.item2;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.item2);
            if (linearLayout2 != null) {
                i10 = R.id.item3;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.item3);
                if (linearLayout3 != null) {
                    return new HangoutFilterViewBinding((FrameLayout) view, linearLayout, linearLayout2, linearLayout3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
