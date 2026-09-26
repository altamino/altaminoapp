package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.ws.ClipLayout;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class LiveLayerOnlineMemberBarBinding implements ViewBinding {

    @NonNull
    public final NVImageView bar;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final View greenOval;

    @NonNull
    public final View liveLayerHalo;

    @NonNull
    public final ClipLayout mainLayout;

    @NonNull
    public final RelativeLayout onlineTextLayout;

    @NonNull
    public final TextView onlineTv;

    @NonNull
    public final LiveLayerOnlineMemberAvatarBinding recentAvatar;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerOnlineMemberBarBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.live_layer_online_member_bar, viewGroup);
        return bind(viewGroup);
    }

    private LiveLayerOnlineMemberBarBinding(@NonNull View view, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout, @NonNull View view2, @NonNull View view3, @NonNull ClipLayout clipLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LiveLayerOnlineMemberAvatarBinding liveLayerOnlineMemberAvatarBinding) {
        this.rootView = view;
        this.bar = nVImageView;
        this.content = linearLayout;
        this.greenOval = view2;
        this.liveLayerHalo = view3;
        this.mainLayout = clipLayout;
        this.onlineTextLayout = relativeLayout;
        this.onlineTv = textView;
        this.recentAvatar = liveLayerOnlineMemberAvatarBinding;
    }

    @NonNull
    public static LiveLayerOnlineMemberBarBinding bind(@NonNull View view) {
        int i10 = R.id.bar;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bar);
        if (nVImageView != null) {
            i10 = R.id.content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.content);
            if (linearLayout != null) {
                i10 = R.id.green_oval;
                View viewA = ViewBindings.a(view, R.id.green_oval);
                if (viewA != null) {
                    i10 = R.id.live_layer_halo;
                    View viewA2 = ViewBindings.a(view, R.id.live_layer_halo);
                    if (viewA2 != null) {
                        i10 = R.id.main_layout;
                        ClipLayout clipLayout = (ClipLayout) ViewBindings.a(view, R.id.main_layout);
                        if (clipLayout != null) {
                            i10 = R.id.online_text_layout;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.online_text_layout);
                            if (relativeLayout != null) {
                                i10 = R.id.online_tv;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.online_tv);
                                if (textView != null) {
                                    i10 = R.id.recent_avatar;
                                    View viewA3 = ViewBindings.a(view, R.id.recent_avatar);
                                    if (viewA3 != null) {
                                        return new LiveLayerOnlineMemberBarBinding(view, nVImageView, linearLayout, viewA, viewA2, clipLayout, relativeLayout, textView, LiveLayerOnlineMemberAvatarBinding.bind(viewA3));
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
