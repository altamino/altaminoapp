package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class OnlineUserDialogBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LinearLayout stub1;

    @NonNull
    public final FlexLayout stub2;

    @NonNull
    public final ImageView stub3;

    @NonNull
    public final View whiteRect;

    @NonNull
    public static OnlineUserDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static OnlineUserDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.online_user_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private OnlineUserDialogBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.stub1 = linearLayout;
        this.stub2 = flexLayout;
        this.stub3 = imageView;
        this.whiteRect = view;
    }

    @NonNull
    public static OnlineUserDialogBinding bind(@NonNull View view) {
        int i10 = R.id.stub1;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.stub1);
        if (linearLayout != null) {
            i10 = R.id.stub2;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.stub2);
            if (flexLayout != null) {
                i10 = R.id.stub3;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.stub3);
                if (imageView != null) {
                    i10 = R.id.white_rect;
                    View viewA = ViewBindings.a(view, R.id.white_rect);
                    if (viewA != null) {
                        return new OnlineUserDialogBinding((FrameLayout) view, linearLayout, flexLayout, imageView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
