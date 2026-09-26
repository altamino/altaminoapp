package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveLayerMainOnlineMemberListEndBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final FrameLayout avatarWrap;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static LiveLayerMainOnlineMemberListEndBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerMainOnlineMemberListEndBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_main_online_member_list_end, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerMainOnlineMemberListEndBinding(@NonNull FlexLayout flexLayout, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout) {
        this.rootView = flexLayout;
        this.avatar = thumbImageView;
        this.avatarWrap = frameLayout;
    }

    @NonNull
    public static LiveLayerMainOnlineMemberListEndBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.avatar_wrap;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.avatar_wrap);
            if (frameLayout != null) {
                return new LiveLayerMainOnlineMemberListEndBinding((FlexLayout) view, thumbImageView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
