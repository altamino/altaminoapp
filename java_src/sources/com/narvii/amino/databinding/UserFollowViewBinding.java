package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class UserFollowViewBinding implements ViewBinding {

    @NonNull
    public final ImageView addImg;

    @NonNull
    public final LinearLayout followContentLayout;

    @NonNull
    public final FrameLayout followLayout;

    @NonNull
    public final ImageView followNotificationRing;

    @NonNull
    public final SpinningView followProgress;

    @NonNull
    public final FrameLayout followSuccessLayout;

    @NonNull
    public final TextView followTxt;

    @NonNull
    public final LinearLayout notificationContentLayout;

    @NonNull
    public final FrameLayout notificationLayout;

    @NonNull
    public final SpinningView notificationProgress;

    @NonNull
    public final TextView notificationTxt;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserFollowViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.user_follow_view, viewGroup);
        return bind(viewGroup);
    }

    private UserFollowViewBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout3, @NonNull SpinningView spinningView2, @NonNull TextView textView2) {
        this.rootView = view;
        this.addImg = imageView;
        this.followContentLayout = linearLayout;
        this.followLayout = frameLayout;
        this.followNotificationRing = imageView2;
        this.followProgress = spinningView;
        this.followSuccessLayout = frameLayout2;
        this.followTxt = textView;
        this.notificationContentLayout = linearLayout2;
        this.notificationLayout = frameLayout3;
        this.notificationProgress = spinningView2;
        this.notificationTxt = textView2;
    }

    @NonNull
    public static UserFollowViewBinding bind(@NonNull View view) {
        int i10 = R.id.add_img;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.add_img);
        if (imageView != null) {
            i10 = R.id.follow_content_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.follow_content_layout);
            if (linearLayout != null) {
                i10 = R.id.follow_layout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.follow_layout);
                if (frameLayout != null) {
                    i10 = R.id.follow_notification_ring;
                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.follow_notification_ring);
                    if (imageView2 != null) {
                        i10 = R.id.follow_progress;
                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.follow_progress);
                        if (spinningView != null) {
                            i10 = R.id.follow_success_layout;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.follow_success_layout);
                            if (frameLayout2 != null) {
                                i10 = R.id.follow_txt;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.follow_txt);
                                if (textView != null) {
                                    i10 = R.id.notification_content_layout;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.notification_content_layout);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.notification_layout;
                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.notification_layout);
                                        if (frameLayout3 != null) {
                                            i10 = R.id.notification_progress;
                                            SpinningView spinningView2 = (SpinningView) ViewBindings.a(view, R.id.notification_progress);
                                            if (spinningView2 != null) {
                                                i10 = R.id.notification_txt;
                                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.notification_txt);
                                                if (textView2 != null) {
                                                    return new UserFollowViewBinding(view, imageView, linearLayout, frameLayout, imageView2, spinningView, frameLayout2, textView, linearLayout2, frameLayout3, spinningView2, textView2);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
