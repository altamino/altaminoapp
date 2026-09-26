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

/* JADX INFO: loaded from: classes11.dex */
public final class DrawerModerationToolLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout drawerCatalogSubmissionLayout;

    @NonNull
    public final LinearLayout drawerCommunitySetup;

    @NonNull
    public final LinearLayout drawerCommunitySetupLayout;

    @NonNull
    public final LinearLayout drawerFlagCenter;

    @NonNull
    public final LinearLayout drawerFlagCenterLayout;

    @NonNull
    public final TextView drawerFlagCount;

    @NonNull
    public final LinearLayout drawerModeration;

    @NonNull
    public final View drawerModerationDivider;

    @NonNull
    public final LinearLayout drawerModerationLayout;

    @NonNull
    public final LinearLayout drawerReorder;

    @NonNull
    public final LinearLayout drawerReorderLayout;

    @NonNull
    public final LinearLayout drawerReviewSubmission;

    @NonNull
    public final TextView drawerReviewSubmissionCount;

    @NonNull
    public final FrameLayout drawerSectionModerationLayout;

    @NonNull
    public final TextView drawerSectionModerationTools;

    @NonNull
    public final LinearLayout drawerStickerPackSubmission;

    @NonNull
    public final LinearLayout drawerStickerPackSubmissionLayout;

    @NonNull
    public final TextView pendingStickerPackBadge;

    @NonNull
    private final View rootView;

    private DrawerModerationToolLayoutBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView, @NonNull LinearLayout linearLayout6, @NonNull View view2, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull LinearLayout linearLayout10, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull TextView textView3, @NonNull LinearLayout linearLayout11, @NonNull LinearLayout linearLayout12, @NonNull TextView textView4) {
        this.rootView = view;
        this.drawerCatalogSubmissionLayout = linearLayout;
        this.drawerCommunitySetup = linearLayout2;
        this.drawerCommunitySetupLayout = linearLayout3;
        this.drawerFlagCenter = linearLayout4;
        this.drawerFlagCenterLayout = linearLayout5;
        this.drawerFlagCount = textView;
        this.drawerModeration = linearLayout6;
        this.drawerModerationDivider = view2;
        this.drawerModerationLayout = linearLayout7;
        this.drawerReorder = linearLayout8;
        this.drawerReorderLayout = linearLayout9;
        this.drawerReviewSubmission = linearLayout10;
        this.drawerReviewSubmissionCount = textView2;
        this.drawerSectionModerationLayout = frameLayout;
        this.drawerSectionModerationTools = textView3;
        this.drawerStickerPackSubmission = linearLayout11;
        this.drawerStickerPackSubmissionLayout = linearLayout12;
        this.pendingStickerPackBadge = textView4;
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerModerationToolLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.drawer_catalog_submission_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.drawer_catalog_submission_layout);
        if (linearLayout != null) {
            i10 = R.id.drawer_community_setup;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.drawer_community_setup);
            if (linearLayout2 != null) {
                i10 = R.id.drawer_community_setup_layout;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.drawer_community_setup_layout);
                if (linearLayout3 != null) {
                    i10 = R.id.drawer_flag_center;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.drawer_flag_center);
                    if (linearLayout4 != null) {
                        i10 = R.id.drawer_flag_center_layout;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.drawer_flag_center_layout);
                        if (linearLayout5 != null) {
                            i10 = R.id.drawer_flag_count;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.drawer_flag_count);
                            if (textView != null) {
                                i10 = R.id.drawer_moderation;
                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.drawer_moderation);
                                if (linearLayout6 != null) {
                                    i10 = R.id.drawer_moderation_divider;
                                    View viewA = ViewBindings.a(view, R.id.drawer_moderation_divider);
                                    if (viewA != null) {
                                        i10 = R.id.drawer_moderation_layout;
                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, R.id.drawer_moderation_layout);
                                        if (linearLayout7 != null) {
                                            i10 = R.id.drawer_reorder;
                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.a(view, R.id.drawer_reorder);
                                            if (linearLayout8 != null) {
                                                i10 = R.id.drawer_reorder_layout;
                                                LinearLayout linearLayout9 = (LinearLayout) ViewBindings.a(view, R.id.drawer_reorder_layout);
                                                if (linearLayout9 != null) {
                                                    i10 = R.id.drawer_review_submission;
                                                    LinearLayout linearLayout10 = (LinearLayout) ViewBindings.a(view, R.id.drawer_review_submission);
                                                    if (linearLayout10 != null) {
                                                        i10 = R.id.drawer_review_submission_count;
                                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.drawer_review_submission_count);
                                                        if (textView2 != null) {
                                                            i10 = R.id.drawer_section_moderation_layout;
                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.drawer_section_moderation_layout);
                                                            if (frameLayout != null) {
                                                                i10 = R.id.drawer_section_moderation_tools;
                                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.drawer_section_moderation_tools);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.drawer_sticker_pack_submission;
                                                                    LinearLayout linearLayout11 = (LinearLayout) ViewBindings.a(view, R.id.drawer_sticker_pack_submission);
                                                                    if (linearLayout11 != null) {
                                                                        i10 = R.id.drawer_sticker_pack_submission_layout;
                                                                        LinearLayout linearLayout12 = (LinearLayout) ViewBindings.a(view, R.id.drawer_sticker_pack_submission_layout);
                                                                        if (linearLayout12 != null) {
                                                                            i10 = R.id.pending_sticker_pack_badge;
                                                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.pending_sticker_pack_badge);
                                                                            if (textView4 != null) {
                                                                                return new DrawerModerationToolLayoutBinding(view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textView, linearLayout6, viewA, linearLayout7, linearLayout8, linearLayout9, linearLayout10, textView2, frameLayout, textView3, linearLayout11, linearLayout12, textView4);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DrawerModerationToolLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.drawer_moderation_tool_layout, viewGroup);
        return bind(viewGroup);
    }
}
