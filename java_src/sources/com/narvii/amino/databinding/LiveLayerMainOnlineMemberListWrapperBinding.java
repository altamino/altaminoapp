package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.recycleview.NVRichRecycleView;

/* JADX INFO: loaded from: classes10.dex */
public final class LiveLayerMainOnlineMemberListWrapperBinding implements ViewBinding {

    @NonNull
    public final TextView privateChat;

    @NonNull
    public final NVRichRecycleView recycleLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerMainOnlineMemberListWrapperBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerMainOnlineMemberListWrapperBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_main_online_member_list_wrapper, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerMainOnlineMemberListWrapperBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull NVRichRecycleView nVRichRecycleView) {
        this.rootView = frameLayout;
        this.privateChat = textView;
        this.recycleLayout = nVRichRecycleView;
    }

    @NonNull
    public static LiveLayerMainOnlineMemberListWrapperBinding bind(@NonNull View view) {
        int i10 = R.id.private_chat;
        TextView textView = (TextView) ViewBindings.a(view, R.id.private_chat);
        if (textView != null) {
            i10 = R.id.recycle_layout;
            NVRichRecycleView nVRichRecycleView = (NVRichRecycleView) ViewBindings.a(view, R.id.recycle_layout);
            if (nVRichRecycleView != null) {
                return new LiveLayerMainOnlineMemberListWrapperBinding((FrameLayout) view, textView, nVRichRecycleView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
