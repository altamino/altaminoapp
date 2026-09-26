package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class ComponentUserFollowBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout userFollow;

    @NonNull
    public final ImageView userFollowIcon;

    @NonNull
    public final SpinningView userFollowProgress;

    @NonNull
    public final TextView userFollowText;

    @NonNull
    public static ComponentUserFollowBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.user_follow_icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.user_follow_icon);
        if (imageView != null) {
            i10 = R.id.user_follow_progress;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.user_follow_progress);
            if (spinningView != null) {
                i10 = R.id.user_follow_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.user_follow_text);
                if (textView != null) {
                    return new ComponentUserFollowBinding(frameLayout, frameLayout, imageView, spinningView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ComponentUserFollowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentUserFollowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.component_user_follow, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ComponentUserFollowBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.userFollow = frameLayout2;
        this.userFollowIcon = imageView;
        this.userFollowProgress = spinningView;
        this.userFollowText = textView;
    }
}
