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

/* JADX INFO: loaded from: classes11.dex */
public final class MaskFansOnlyPostBinding implements ViewBinding {

    @NonNull
    public final TextView becomeFans;

    @NonNull
    public final View bgBottom;

    @NonNull
    public final TextView hint;

    @NonNull
    public final View marginBottomPlaceholder;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MaskFansOnlyPostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MaskFansOnlyPostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.mask_fans_only_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MaskFansOnlyPostBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2, @NonNull View view2) {
        this.rootView = linearLayout;
        this.becomeFans = textView;
        this.bgBottom = view;
        this.hint = textView2;
        this.marginBottomPlaceholder = view2;
    }

    @NonNull
    public static MaskFansOnlyPostBinding bind(@NonNull View view) {
        int i10 = R.id.become_fans;
        TextView textView = (TextView) ViewBindings.a(view, R.id.become_fans);
        if (textView != null) {
            i10 = R.id.bg_bottom;
            View viewA = ViewBindings.a(view, R.id.bg_bottom);
            if (viewA != null) {
                i10 = R.id.hint;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.hint);
                if (textView2 != null) {
                    i10 = R.id.margin_bottom_placeholder;
                    View viewA2 = ViewBindings.a(view, R.id.margin_bottom_placeholder);
                    if (viewA2 != null) {
                        return new MaskFansOnlyPostBinding((LinearLayout) view, textView, viewA, textView2, viewA2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
