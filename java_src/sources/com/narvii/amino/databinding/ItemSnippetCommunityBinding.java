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
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSnippetCommunityBinding implements ViewBinding {

    @NonNull
    public final LinearLayout communityInfoContainer;

    @NonNull
    public final TintButton communityInviteLock;

    @NonNull
    public final TextView communityLanguage;

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    public final PromotionalImageView image;

    @NonNull
    public final LinearLayout memberCountAndLanguage;

    @NonNull
    public final TextView membercount;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView tagline;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemSnippetCommunityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetCommunityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_snippet_community, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSnippetCommunityBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull CommunityIconView communityIconView, @NonNull PromotionalImageView promotionalImageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.communityInfoContainer = linearLayout2;
        this.communityInviteLock = tintButton;
        this.communityLanguage = textView;
        this.icon = communityIconView;
        this.image = promotionalImageView;
        this.memberCountAndLanguage = linearLayout3;
        this.membercount = textView2;
        this.tagline = textView3;
        this.title = textView4;
    }

    @NonNull
    public static ItemSnippetCommunityBinding bind(@NonNull View view) {
        int i10 = R.id.community_info_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_info_container);
        if (linearLayout != null) {
            i10 = R.id.community_invite_lock;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.community_invite_lock);
            if (tintButton != null) {
                i10 = R.id.community_language;
                TextView textView = (TextView) ViewBindings.a(view, R.id.community_language);
                if (textView != null) {
                    i10 = R.id.icon;
                    CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
                    if (communityIconView != null) {
                        i10 = R.id.image;
                        PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, R.id.image);
                        if (promotionalImageView != null) {
                            i10 = R.id.member_count_and_language;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.member_count_and_language);
                            if (linearLayout2 != null) {
                                i10 = R.id.membercount;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.membercount);
                                if (textView2 != null) {
                                    i10 = R.id.tagline;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.tagline);
                                    if (textView3 != null) {
                                        i10 = R.id.title;
                                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.title);
                                        if (textView4 != null) {
                                            return new ItemSnippetCommunityBinding((LinearLayout) view, linearLayout, tintButton, textView, communityIconView, promotionalImageView, linearLayout2, textView2, textView3, textView4);
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
