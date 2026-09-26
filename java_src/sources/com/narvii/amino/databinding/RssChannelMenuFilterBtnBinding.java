package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class RssChannelMenuFilterBtnBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static RssChannelMenuFilterBtnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RssChannelMenuFilterBtnBinding bind(@NonNull View view) {
        if (view != null) {
            return new RssChannelMenuFilterBtnBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static RssChannelMenuFilterBtnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.rss_channel_menu_filter_btn, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RssChannelMenuFilterBtnBinding(@NonNull FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }
}
