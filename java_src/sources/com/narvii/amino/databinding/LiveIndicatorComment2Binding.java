package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveIndicatorComment2Binding implements ViewBinding {

    @NonNull
    public final ImageView dot1;

    @NonNull
    public final ImageView dot2;

    @NonNull
    public final ImageView dot3;

    @NonNull
    public final ImageView dot4;

    @NonNull
    public final ImageView indi0;

    @NonNull
    public final FlexLayout indi1;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static LiveIndicatorComment2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveIndicatorComment2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_indicator_comment_2, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveIndicatorComment2Binding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull FlexLayout flexLayout2) {
        this.rootView = flexLayout;
        this.dot1 = imageView;
        this.dot2 = imageView2;
        this.dot3 = imageView3;
        this.dot4 = imageView4;
        this.indi0 = imageView5;
        this.indi1 = flexLayout2;
    }

    @NonNull
    public static LiveIndicatorComment2Binding bind(@NonNull View view) {
        int i10 = R.id.dot1;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.dot1);
        if (imageView != null) {
            i10 = R.id.dot2;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.dot2);
            if (imageView2 != null) {
                i10 = R.id.dot3;
                ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.dot3);
                if (imageView3 != null) {
                    i10 = R.id.dot4;
                    ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.dot4);
                    if (imageView4 != null) {
                        i10 = R.id.indi_0;
                        ImageView imageView5 = (ImageView) ViewBindings.a(view, R.id.indi_0);
                        if (imageView5 != null) {
                            i10 = R.id.indi_1;
                            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.indi_1);
                            if (flexLayout != null) {
                                return new LiveIndicatorComment2Binding((FlexLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, flexLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
