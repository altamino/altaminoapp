package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class FansListHeaderBinding implements ViewBinding {

    @NonNull
    public final NVImageView bg;

    @NonNull
    public final TextView fansCount;

    @NonNull
    public final FlexLayout fansHeader;

    @NonNull
    public final View gradientMask;

    @NonNull
    public final RelativeLayout overlay;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static FansListHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FansListHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fans_list_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FansListHeaderBinding(@NonNull RelativeLayout relativeLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull FlexLayout flexLayout, @NonNull View view, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.bg = nVImageView;
        this.fansCount = textView;
        this.fansHeader = flexLayout;
        this.gradientMask = view;
        this.overlay = relativeLayout2;
    }

    @NonNull
    public static FansListHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bg);
        if (nVImageView != null) {
            i10 = R.id.fans_count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.fans_count);
            if (textView != null) {
                i10 = R.id.fans_header;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.fans_header);
                if (flexLayout != null) {
                    i10 = R.id.gradient_mask;
                    View viewA = ViewBindings.a(view, R.id.gradient_mask);
                    if (viewA != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) view;
                        return new FansListHeaderBinding(relativeLayout, nVImageView, textView, flexLayout, viewA, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
