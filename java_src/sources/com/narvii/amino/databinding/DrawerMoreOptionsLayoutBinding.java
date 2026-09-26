package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class DrawerMoreOptionsLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout drawerAllMembers;

    @NonNull
    public final LinearLayout drawerBookmarks;

    @NonNull
    public final LinearLayout drawerCommunityDetail;

    @NonNull
    public final LinearLayout drawerCreateCommunity;

    @NonNull
    public final LinearLayout drawerCreateCommunityLayout;

    @NonNull
    public final LinearLayout drawerGuidelines;

    @NonNull
    public final TextView drawerOthers;

    @NonNull
    public final FrameLayout drawerSectionOthersLayout;

    @NonNull
    public final LinearLayout drawerSettings;

    @NonNull
    public final LinearLayout drawerShareCommunity;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView shareCommunityContent;

    @NonNull
    public final TextView shareCommunityHint;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerMoreOptionsLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.drawer_more_options_layout, viewGroup);
        return bind(viewGroup);
    }

    private DrawerMoreOptionsLayoutBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = view;
        this.drawerAllMembers = linearLayout;
        this.drawerBookmarks = linearLayout2;
        this.drawerCommunityDetail = linearLayout3;
        this.drawerCreateCommunity = linearLayout4;
        this.drawerCreateCommunityLayout = linearLayout5;
        this.drawerGuidelines = linearLayout6;
        this.drawerOthers = textView;
        this.drawerSectionOthersLayout = frameLayout;
        this.drawerSettings = linearLayout7;
        this.drawerShareCommunity = linearLayout8;
        this.shareCommunityContent = textView2;
        this.shareCommunityHint = textView3;
    }

    @NonNull
    public static DrawerMoreOptionsLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.drawer_all_members;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.drawer_all_members);
        if (linearLayout != null) {
            i10 = R.id.drawer_bookmarks;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.drawer_bookmarks);
            if (linearLayout2 != null) {
                i10 = R.id.drawer_community_detail;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.drawer_community_detail);
                if (linearLayout3 != null) {
                    i10 = R.id.drawer_create_community;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.drawer_create_community);
                    if (linearLayout4 != null) {
                        i10 = R.id.drawer_create_community_layout;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.drawer_create_community_layout);
                        if (linearLayout5 != null) {
                            i10 = R.id.drawer_guidelines;
                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.drawer_guidelines);
                            if (linearLayout6 != null) {
                                i10 = R.id.drawer_others;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.drawer_others);
                                if (textView != null) {
                                    i10 = R.id.drawer_section_others_layout;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.drawer_section_others_layout);
                                    if (frameLayout != null) {
                                        i10 = R.id.drawer_settings;
                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, R.id.drawer_settings);
                                        if (linearLayout7 != null) {
                                            i10 = R.id.drawer_share_community;
                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.a(view, R.id.drawer_share_community);
                                            if (linearLayout8 != null) {
                                                i10 = R.id.share_community_content;
                                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.share_community_content);
                                                if (textView2 != null) {
                                                    i10 = R.id.share_community_hint;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.share_community_hint);
                                                    if (textView3 != null) {
                                                        return new DrawerMoreOptionsLayoutBinding(view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView, frameLayout, linearLayout7, linearLayout8, textView2, textView3);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
