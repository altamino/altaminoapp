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
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutAchievementsStatsBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView followersCount;

    @NonNull
    public final AutoSizingTextView last24Hours;

    @NonNull
    public final LinearLayout last24HoursLayout;

    @NonNull
    public final AutoSizingTextView lastWeek;

    @NonNull
    public final LinearLayout lastWeekLayout;

    @NonNull
    public final TextView myStats;

    @NonNull
    public final AutoSizingTextView postsCreated;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static LayoutAchievementsStatsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutAchievementsStatsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_achievements_stats, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutAchievementsStatsBinding(@NonNull LinearLayout linearLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull LinearLayout linearLayout2, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull AutoSizingTextView autoSizingTextView4) {
        this.rootView = linearLayout;
        this.followersCount = autoSizingTextView;
        this.last24Hours = autoSizingTextView2;
        this.last24HoursLayout = linearLayout2;
        this.lastWeek = autoSizingTextView3;
        this.lastWeekLayout = linearLayout3;
        this.myStats = textView;
        this.postsCreated = autoSizingTextView4;
    }

    @NonNull
    public static LayoutAchievementsStatsBinding bind(@NonNull View view) {
        int i10 = R.id.followers_count;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.followers_count);
        if (autoSizingTextView != null) {
            i10 = R.id.last_24_hours;
            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.last_24_hours);
            if (autoSizingTextView2 != null) {
                i10 = R.id.last_24_hours_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.last_24_hours_layout);
                if (linearLayout != null) {
                    i10 = R.id.last_week;
                    AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, R.id.last_week);
                    if (autoSizingTextView3 != null) {
                        i10 = R.id.last_week_layout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.last_week_layout);
                        if (linearLayout2 != null) {
                            i10 = R.id.my_stats;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.my_stats);
                            if (textView != null) {
                                i10 = R.id.posts_created;
                                AutoSizingTextView autoSizingTextView4 = (AutoSizingTextView) ViewBindings.a(view, R.id.posts_created);
                                if (autoSizingTextView4 != null) {
                                    return new LayoutAchievementsStatsBinding((LinearLayout) view, autoSizingTextView, autoSizingTextView2, linearLayout, autoSizingTextView3, linearLayout2, textView, autoSizingTextView4);
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
