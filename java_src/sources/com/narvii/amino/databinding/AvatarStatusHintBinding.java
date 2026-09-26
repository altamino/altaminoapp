package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.chat.video.view.BreathView;

/* JADX INFO: loaded from: classes2.dex */
public final class AvatarStatusHintBinding implements ViewBinding {

    @NonNull
    public final FlexLayout faceDetectStatus;

    @NonNull
    public final BreathView icon;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static AvatarStatusHintBinding bind(@NonNull View view) {
        FlexLayout flexLayout = (FlexLayout) view;
        BreathView breathView = (BreathView) ViewBindings.a(view, R.id.icon);
        if (breathView != null) {
            return new AvatarStatusHintBinding(flexLayout, flexLayout, breathView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.icon)));
    }

    @NonNull
    public static AvatarStatusHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AvatarStatusHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.avatar_status_hint, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AvatarStatusHintBinding(@NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull BreathView breathView) {
        this.rootView = flexLayout;
        this.faceDetectStatus = flexLayout2;
        this.icon = breathView;
    }
}
