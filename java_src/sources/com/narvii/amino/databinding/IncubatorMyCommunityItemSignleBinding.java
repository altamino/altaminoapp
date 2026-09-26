package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoScaleTextView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.SmoothProgressBar;

/* JADX INFO: loaded from: classes5.dex */
public final class IncubatorMyCommunityItemSignleBinding implements ViewBinding {

    @NonNull
    public final AutoScaleTextView checkin;

    @NonNull
    public final TextView debuginfo;

    @NonNull
    public final TextView disabled;

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    public final PromotionalImageView image;

    @NonNull
    public final AutoScaleTextView notificationCount;

    @NonNull
    public final AutoSizingTextView probation;

    @NonNull
    public final SmoothProgressBar progress;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final AutoScaleTextView title;

    @NonNull
    public static IncubatorMyCommunityItemSignleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorMyCommunityItemSignleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_my_community_item_signle, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorMyCommunityItemSignleBinding(@NonNull FlexLayout flexLayout, @NonNull AutoScaleTextView autoScaleTextView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CommunityIconView communityIconView, @NonNull PromotionalImageView promotionalImageView, @NonNull AutoScaleTextView autoScaleTextView2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull SmoothProgressBar smoothProgressBar, @NonNull AutoScaleTextView autoScaleTextView3) {
        this.rootView = flexLayout;
        this.checkin = autoScaleTextView;
        this.debuginfo = textView;
        this.disabled = textView2;
        this.icon = communityIconView;
        this.image = promotionalImageView;
        this.notificationCount = autoScaleTextView2;
        this.probation = autoSizingTextView;
        this.progress = smoothProgressBar;
        this.title = autoScaleTextView3;
    }

    @NonNull
    public static IncubatorMyCommunityItemSignleBinding bind(@NonNull View view) {
        int i10 = R.id.checkin;
        AutoScaleTextView autoScaleTextView = (AutoScaleTextView) ViewBindings.a(view, R.id.checkin);
        if (autoScaleTextView != null) {
            i10 = R.id.debuginfo;
            TextView textView = (TextView) ViewBindings.a(view, R.id.debuginfo);
            if (textView != null) {
                i10 = R.id.disabled;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.disabled);
                if (textView2 != null) {
                    i10 = R.id.icon;
                    CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
                    if (communityIconView != null) {
                        i10 = R.id.image;
                        PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, R.id.image);
                        if (promotionalImageView != null) {
                            i10 = R.id.notification_count;
                            AutoScaleTextView autoScaleTextView2 = (AutoScaleTextView) ViewBindings.a(view, R.id.notification_count);
                            if (autoScaleTextView2 != null) {
                                i10 = R.id.probation;
                                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.probation);
                                if (autoSizingTextView != null) {
                                    i10 = R.id.progress;
                                    SmoothProgressBar smoothProgressBar = (SmoothProgressBar) ViewBindings.a(view, R.id.progress);
                                    if (smoothProgressBar != null) {
                                        i10 = R.id.title;
                                        AutoScaleTextView autoScaleTextView3 = (AutoScaleTextView) ViewBindings.a(view, R.id.title);
                                        if (autoScaleTextView3 != null) {
                                            return new IncubatorMyCommunityItemSignleBinding((FlexLayout) view, autoScaleTextView, textView, textView2, communityIconView, promotionalImageView, autoScaleTextView2, autoSizingTextView, smoothProgressBar, autoScaleTextView3);
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
