package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.view.LiveUserRecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public final class VvChatLiveUserBinding implements ViewBinding {

    @NonNull
    public final FrameLayout invite;

    @NonNull
    public final TextView liveUserCount;

    @NonNull
    public final LinearLayout liveUserCountContainer;

    @NonNull
    public final FrameLayout liveUserLayoutRoot;

    @NonNull
    public final LiveUserRecyclerView liveUserRecycler;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static VvChatLiveUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VvChatLiveUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.vv_chat_live_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VvChatLiveUserBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout3, @NonNull LiveUserRecyclerView liveUserRecyclerView) {
        this.rootView = frameLayout;
        this.invite = frameLayout2;
        this.liveUserCount = textView;
        this.liveUserCountContainer = linearLayout;
        this.liveUserLayoutRoot = frameLayout3;
        this.liveUserRecycler = liveUserRecyclerView;
    }

    @NonNull
    public static VvChatLiveUserBinding bind(@NonNull View view) {
        int i10 = R.id.invite;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.invite);
        if (frameLayout != null) {
            i10 = R.id.live_user_count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.live_user_count);
            if (textView != null) {
                i10 = R.id.live_user_count_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.live_user_count_container);
                if (linearLayout != null) {
                    FrameLayout frameLayout2 = (FrameLayout) view;
                    i10 = R.id.live_user_recycler;
                    LiveUserRecyclerView liveUserRecyclerView = (LiveUserRecyclerView) ViewBindings.a(view, R.id.live_user_recycler);
                    if (liveUserRecyclerView != null) {
                        return new VvChatLiveUserBinding(frameLayout2, frameLayout, textView, linearLayout, frameLayout2, liveUserRecyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
