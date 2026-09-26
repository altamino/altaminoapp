package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ThreadBackgroundItemBinding implements ViewBinding {

    @NonNull
    public final BlurImageView chatBackgroundItemBlur;

    @NonNull
    public final NVImageView chatBackgroundItemImg;

    @NonNull
    public final View chatBackgroundItemSelected;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ThreadBackgroundItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadBackgroundItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_background_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadBackgroundItemBinding(@NonNull FrameLayout frameLayout, @NonNull BlurImageView blurImageView, @NonNull NVImageView nVImageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.chatBackgroundItemBlur = blurImageView;
        this.chatBackgroundItemImg = nVImageView;
        this.chatBackgroundItemSelected = view;
    }

    @NonNull
    public static ThreadBackgroundItemBinding bind(@NonNull View view) {
        int i10 = R.id.chat_background_item_blur;
        BlurImageView blurImageView = (BlurImageView) ViewBindings.a(view, R.id.chat_background_item_blur);
        if (blurImageView != null) {
            i10 = R.id.chat_background_item_img;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.chat_background_item_img);
            if (nVImageView != null) {
                i10 = R.id.chat_background_item_selected;
                View viewA = ViewBindings.a(view, R.id.chat_background_item_selected);
                if (viewA != null) {
                    return new ThreadBackgroundItemBinding((FrameLayout) view, blurImageView, nVImageView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
