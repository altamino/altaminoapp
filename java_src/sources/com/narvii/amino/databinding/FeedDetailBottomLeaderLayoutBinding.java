package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedDetailBottomLeaderLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout bottomBroadcast;

    @NonNull
    public final TextView bottomBroadcastHint;

    @NonNull
    public final LinearLayout bottomFeature;

    @NonNull
    public final TextView bottomFeatureHint;

    @NonNull
    public final LinearLayout bottomGoNextLeader;

    @NonNull
    public final TextView bottomGoNextLeaderHint;

    @NonNull
    public final LinearLayout bottomModMenu;

    @NonNull
    public final TextView bottomModMenuHint;

    @NonNull
    public final LinearLayout leaderContainer;

    @NonNull
    public final TintButton nextIconLeader;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FeedDetailBottomLeaderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedDetailBottomLeaderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_detail_bottom_leader_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedDetailBottomLeaderLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull LinearLayout linearLayout5, @NonNull TextView textView4, @NonNull LinearLayout linearLayout6, @NonNull TintButton tintButton) {
        this.rootView = linearLayout;
        this.bottomBroadcast = linearLayout2;
        this.bottomBroadcastHint = textView;
        this.bottomFeature = linearLayout3;
        this.bottomFeatureHint = textView2;
        this.bottomGoNextLeader = linearLayout4;
        this.bottomGoNextLeaderHint = textView3;
        this.bottomModMenu = linearLayout5;
        this.bottomModMenuHint = textView4;
        this.leaderContainer = linearLayout6;
        this.nextIconLeader = tintButton;
    }

    @NonNull
    public static FeedDetailBottomLeaderLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_broadcast;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bottom_broadcast);
        if (linearLayout != null) {
            i10 = R.id.bottom_broadcast_hint;
            TextView textView = (TextView) ViewBindings.a(view, R.id.bottom_broadcast_hint);
            if (textView != null) {
                i10 = R.id.bottom_feature;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.bottom_feature);
                if (linearLayout2 != null) {
                    i10 = R.id.bottom_feature_hint;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.bottom_feature_hint);
                    if (textView2 != null) {
                        i10 = R.id.bottom_go_next_leader;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.bottom_go_next_leader);
                        if (linearLayout3 != null) {
                            i10 = R.id.bottom_go_next_leader_hint;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.bottom_go_next_leader_hint);
                            if (textView3 != null) {
                                i10 = R.id.bottom_mod_menu;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.bottom_mod_menu);
                                if (linearLayout4 != null) {
                                    i10 = R.id.bottom_mod_menu_hint;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.bottom_mod_menu_hint);
                                    if (textView4 != null) {
                                        LinearLayout linearLayout5 = (LinearLayout) view;
                                        i10 = R.id.next_icon_leader;
                                        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.next_icon_leader);
                                        if (tintButton != null) {
                                            return new FeedDetailBottomLeaderLayoutBinding(linearLayout5, linearLayout, textView, linearLayout2, textView2, linearLayout3, textView3, linearLayout4, textView4, linearLayout5, tintButton);
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
