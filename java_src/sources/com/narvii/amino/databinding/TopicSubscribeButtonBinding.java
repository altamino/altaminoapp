package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.topic.widgets.TopicBookmarkView;
import com.narvii.widget.GradientView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class TopicSubscribeButtonBinding implements ViewBinding {

    @NonNull
    public final TopicBookmarkView bookmark;

    @NonNull
    public final GradientView notificationGradient;

    @NonNull
    public final SpinningView notificationProgress;

    @NonNull
    public final ImageView notificationRing;

    @NonNull
    private final View rootView;

    @NonNull
    public final FrameLayout topicBookmarkNotification;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TopicSubscribeButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.topic_subscribe_button, viewGroup);
        return bind(viewGroup);
    }

    private TopicSubscribeButtonBinding(@NonNull View view, @NonNull TopicBookmarkView topicBookmarkView, @NonNull GradientView gradientView, @NonNull SpinningView spinningView, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout) {
        this.rootView = view;
        this.bookmark = topicBookmarkView;
        this.notificationGradient = gradientView;
        this.notificationProgress = spinningView;
        this.notificationRing = imageView;
        this.topicBookmarkNotification = frameLayout;
    }

    @NonNull
    public static TopicSubscribeButtonBinding bind(@NonNull View view) {
        int i10 = R.id.bookmark;
        TopicBookmarkView topicBookmarkView = (TopicBookmarkView) ViewBindings.a(view, R.id.bookmark);
        if (topicBookmarkView != null) {
            i10 = R.id.notification_gradient;
            GradientView gradientView = (GradientView) ViewBindings.a(view, R.id.notification_gradient);
            if (gradientView != null) {
                i10 = R.id.notification_progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.notification_progress);
                if (spinningView != null) {
                    i10 = R.id.notification_ring;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.notification_ring);
                    if (imageView != null) {
                        i10 = R.id.topic_bookmark_notification;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.topic_bookmark_notification);
                        if (frameLayout != null) {
                            return new TopicSubscribeButtonBinding(view, topicBookmarkView, gradientView, spinningView, imageView, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
