package com.narvii.account.visitor;

import android.content.SharedPreferences;
import android.graphics.Color;
import android.view.View;
import com.google.android.gms.common.util.GmsVersion;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.DateUtils;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import java.util.Date;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecentVisitorHelper.kt */
/* loaded from: classes2.dex */
public final class RecentVisitorHelper {
    public static final Companion Companion = new Companion(null);
    private static final String PREF_KEY_LAST_VISIT_OTHER_PROFILE_TIME = "pref_key_last_visit_other_profile_time";
    private static final String PREF_KEY_SHOW_TOOLTIP_HINT_FOR_RECENT_VISITORS = "pref_key_show_tooltip_hint_for_recent_visitors";
    private final SharedPreferences prefs;
    private final ToolTipHelper toolTipHelper;

    public RecentVisitorHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Object service = ctx.getService("prefs");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"prefs\")");
        this.prefs = (SharedPreferences) service;
        this.toolTipHelper = new ToolTipHelper();
    }

    /* compiled from: RecentVisitorHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final boolean hasShownFindOutVisitorsTooltip() {
        boolean z = this.prefs.getBoolean(PREF_KEY_SHOW_TOOLTIP_HINT_FOR_RECENT_VISITORS, false);
        if (!z) {
            this.prefs.edit().putBoolean(PREF_KEY_SHOW_TOOLTIP_HINT_FOR_RECENT_VISITORS, true).apply();
        }
        return z;
    }

    private final boolean hasVisitedOthersProfileToday() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.prefs.getLong(PREF_KEY_LAST_VISIT_OTHER_PROFILE_TIME, 0L);
        boolean zIsSameDay = DateUtils.isSameDay(new Date(jCurrentTimeMillis), new Date(j)) | (jCurrentTimeMillis - j <= ((long) GmsVersion.VERSION_PARMESAN));
        if (!zIsSameDay) {
            this.prefs.edit().putLong(PREF_KEY_LAST_VISIT_OTHER_PROFILE_TIME, jCurrentTimeMillis).apply();
        }
        return zIsSameDay;
    }

    public static /* synthetic */ void checkVisitorTooltips$default(RecentVisitorHelper recentVisitorHelper, User user, boolean z, View view, View view2, View view3, int i, Object obj) {
        if ((i & 16) != 0) {
            view3 = null;
        }
        recentVisitorHelper.checkVisitorTooltips(user, z, view, view2, view3);
    }

    public final void checkVisitorTooltips(User user, boolean z, View countView, View chatView, View view) {
        Intrinsics.checkParameterIsNotNull(countView, "countView");
        Intrinsics.checkParameterIsNotNull(chatView, "chatView");
        if (user == null) {
            return;
        }
        if (z) {
            if (user.visitorsCount <= 0 || user.visitPrivacy == 2 || hasShownFindOutVisitorsTooltip()) {
                return;
            }
            Tooltip.Builder builderAutoHide = Tooltip.builder().anchorView(countView).textId(R.string.see_who_visited_your_profile).textSize(Utils.dpToPx(countView.getContext(), 12.0f)).indicatorUp(false).background(Color.parseColor("#FFFFC700")).showOnlyOnce(true).autoHide();
            if (view != null) {
                builderAutoHide.rootView(view);
            }
            this.toolTipHelper.showToolTip(builderAutoHide.build());
            return;
        }
        boolean z2 = user.isGlobal;
        if (!(!z2 || (z2 && user.followingStatus == 3)) || hasVisitedOthersProfileToday()) {
            return;
        }
        Tooltip.Builder builderAutoHide2 = Tooltip.builder().anchorView(chatView).textId(R.string.start_a_chat).textSize(Utils.dpToPx(chatView.getContext(), 12.0f)).indicatorUp(false).background(Color.parseColor("#FFFFC700")).showOnlyOnce(true).autoHide();
        if (view != null) {
            builderAutoHide2.rootView(view);
        }
        this.toolTipHelper.showToolTip(builderAutoHide2.build());
    }

    public final void hideToolTips() {
        this.toolTipHelper.hideToolTip();
    }

    public final boolean isTooltipShowing() {
        return this.toolTipHelper.isTooltipShowing();
    }
}
