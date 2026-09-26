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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.CommunityActivenessBar;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes3.dex */
public final class CommunityDetailHeaderBinding implements ViewBinding {

    @NonNull
    public final CommunityActivenessBar communityActivenessLevel;

    @NonNull
    public final TextView communityIdHint;

    @NonNull
    public final AutoSizingTextView communityIdInfo;

    @NonNull
    public final FlexLayout communityInfoContainer;

    @NonNull
    public final TintButton communityInviteLock;

    @NonNull
    public final AutoSizingTextView communityLanguage;

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    public final FlexLayout iconContainer;

    @NonNull
    public final AutoSizingTextView membercount;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static CommunityDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_detail_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityDetailHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityActivenessBar communityActivenessBar, @NonNull TextView textView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FlexLayout flexLayout, @NonNull TintButton tintButton, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull CommunityIconView communityIconView, @NonNull FlexLayout flexLayout2, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.communityActivenessLevel = communityActivenessBar;
        this.communityIdHint = textView;
        this.communityIdInfo = autoSizingTextView;
        this.communityInfoContainer = flexLayout;
        this.communityInviteLock = tintButton;
        this.communityLanguage = autoSizingTextView2;
        this.icon = communityIconView;
        this.iconContainer = flexLayout2;
        this.membercount = autoSizingTextView3;
        this.title = textView2;
    }

    @NonNull
    public static CommunityDetailHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.community_activeness_level;
        CommunityActivenessBar communityActivenessBar = (CommunityActivenessBar) ViewBindings.a(view, R.id.community_activeness_level);
        if (communityActivenessBar != null) {
            i10 = R.id.community_id_hint;
            TextView textView = (TextView) ViewBindings.a(view, R.id.community_id_hint);
            if (textView != null) {
                i10 = R.id.community_id_info;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.community_id_info);
                if (autoSizingTextView != null) {
                    i10 = R.id.community_info_container;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.community_info_container);
                    if (flexLayout != null) {
                        i10 = R.id.community_invite_lock;
                        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.community_invite_lock);
                        if (tintButton != null) {
                            i10 = R.id.community_language;
                            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.community_language);
                            if (autoSizingTextView2 != null) {
                                i10 = R.id.icon;
                                CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
                                if (communityIconView != null) {
                                    i10 = R.id.icon_container;
                                    FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.icon_container);
                                    if (flexLayout2 != null) {
                                        i10 = R.id.membercount;
                                        AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, R.id.membercount);
                                        if (autoSizingTextView3 != null) {
                                            i10 = R.id.title;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                            if (textView2 != null) {
                                                return new CommunityDetailHeaderBinding((LinearLayout) view, communityActivenessBar, textView, autoSizingTextView, flexLayout, tintButton, autoSizingTextView2, communityIconView, flexLayout2, autoSizingTextView3, textView2);
                                            }
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
