package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class FollowViewBinding implements ViewBinding {

    @NonNull
    public final ImageView addImg;

    @NonNull
    public final FrameLayout followLayout;

    @NonNull
    public final NVImageView followSuccessLayout;

    @NonNull
    public final TextView followTxt;

    @NonNull
    private final View rootView;

    @NonNull
    public final SpinningView userFollowProgress;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FollowViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.follow_view, viewGroup);
        return bind(viewGroup);
    }

    private FollowViewBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull SpinningView spinningView) {
        this.rootView = view;
        this.addImg = imageView;
        this.followLayout = frameLayout;
        this.followSuccessLayout = nVImageView;
        this.followTxt = textView;
        this.userFollowProgress = spinningView;
    }

    @NonNull
    public static FollowViewBinding bind(@NonNull View view) {
        int i10 = R.id.add_img;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.add_img);
        if (imageView != null) {
            i10 = R.id.follow_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.follow_layout);
            if (frameLayout != null) {
                i10 = R.id.follow_success_layout;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.follow_success_layout);
                if (nVImageView != null) {
                    i10 = R.id.follow_txt;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.follow_txt);
                    if (textView != null) {
                        i10 = R.id.user_follow_progress;
                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.user_follow_progress);
                        if (spinningView != null) {
                            return new FollowViewBinding(view, imageView, frameLayout, nVImageView, textView, spinningView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
