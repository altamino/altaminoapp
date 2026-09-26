package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class MaskFansOnlyStoryBinding implements ViewBinding {

    @NonNull
    public final TextView becomeFans;

    @NonNull
    public final TextView hint;

    @NonNull
    public final LinearLayout maskFansLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MaskFansOnlyStoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MaskFansOnlyStoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.mask_fans_only_story, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MaskFansOnlyStoryBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.becomeFans = textView;
        this.hint = textView2;
        this.maskFansLayout = linearLayout2;
    }

    @NonNull
    public static MaskFansOnlyStoryBinding bind(@NonNull View view) {
        int i10 = R.id.become_fans;
        TextView textView = (TextView) ViewBindings.a(view, R.id.become_fans);
        if (textView != null) {
            i10 = R.id.hint;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.hint);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new MaskFansOnlyStoryBinding(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
