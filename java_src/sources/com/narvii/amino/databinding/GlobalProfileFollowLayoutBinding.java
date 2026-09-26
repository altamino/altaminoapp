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
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.GradientView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class GlobalProfileFollowLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout followButton;

    @NonNull
    public final GradientView followGradient;

    @NonNull
    public final ImageView followIcon;

    @NonNull
    public final SpinningView followNotificationProgress;

    @NonNull
    public final ImageView followNotificationRing;

    @NonNull
    public final SpinningView followProgress;

    @NonNull
    public final AutoSizingTextView followText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout userFollowNotification;

    @NonNull
    public static GlobalProfileFollowLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GlobalProfileFollowLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.global_profile_follow_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GlobalProfileFollowLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull GradientView gradientView, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull ImageView imageView2, @NonNull SpinningView spinningView2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FrameLayout frameLayout2) {
        this.rootView = linearLayout;
        this.followButton = frameLayout;
        this.followGradient = gradientView;
        this.followIcon = imageView;
        this.followNotificationProgress = spinningView;
        this.followNotificationRing = imageView2;
        this.followProgress = spinningView2;
        this.followText = autoSizingTextView;
        this.userFollowNotification = frameLayout2;
    }

    @NonNull
    public static GlobalProfileFollowLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.follow_button;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.follow_button);
        if (frameLayout != null) {
            i10 = R.id.follow_gradient;
            GradientView gradientView = (GradientView) ViewBindings.a(view, R.id.follow_gradient);
            if (gradientView != null) {
                i10 = R.id.follow_icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.follow_icon);
                if (imageView != null) {
                    i10 = R.id.follow_notification_progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.follow_notification_progress);
                    if (spinningView != null) {
                        i10 = R.id.follow_notification_ring;
                        ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.follow_notification_ring);
                        if (imageView2 != null) {
                            i10 = R.id.follow_progress;
                            SpinningView spinningView2 = (SpinningView) ViewBindings.a(view, R.id.follow_progress);
                            if (spinningView2 != null) {
                                i10 = R.id.follow_text;
                                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.follow_text);
                                if (autoSizingTextView != null) {
                                    i10 = R.id.user_follow_notification;
                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.user_follow_notification);
                                    if (frameLayout2 != null) {
                                        return new GlobalProfileFollowLayoutBinding((LinearLayout) view, frameLayout, gradientView, imageView, spinningView, imageView2, spinningView2, autoSizingTextView, frameLayout2);
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
