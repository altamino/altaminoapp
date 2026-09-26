package com.narvii.util.mixpanel;

import android.content.Context;
import com.mixpanel.android.mpmetrics.g;
import com.narvii.lib.BuildConfig;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes11.dex */
public final class MixpanelAnalytics {

    @NotNull
    private final Context context;

    public MixpanelAnalytics(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
    }

    private final g getMixPanel() {
        g gVarM = g.m(this.context, BuildConfig.MIXPANEL_TOKEN, true);
        t.i(gVarM, "getInstance(...)");
        return gVarM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void trackEvent$default(MixpanelAnalytics mixpanelAnalytics, String str, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        mixpanelAnalytics.trackEvent(str, map);
    }

    public final void increment(@NotNull String property, int i10) {
        t.j(property, "property");
        getMixPanel().o().e(property, i10);
    }

    public final void registerSuperProperties(@NotNull JSONObject jsonUid) {
        t.j(jsonUid, "jsonUid");
        getMixPanel().C(jsonUid);
    }

    public final void trackEvent(@NotNull String eventName, @Nullable Map<String, ? extends Object> map) {
        t.j(eventName, "eventName");
        if (map == null) {
            getMixPanel().F(eventName);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
            if (t.e(eventName, Tracking.Events.PAGE_VIEW)) {
                jSONObject.put(Tracking.Properties.COUNT_AS_PAGE_LOAD, true);
            }
        }
        getMixPanel().G(eventName, jSONObject);
    }

    public final void identifyUser(@NotNull MixPanelUser user) {
        String str;
        t.j(user, "user");
        g mixPanel = getMixPanel();
        mixPanel.t(user.getUserId());
        mixPanel.o().d("$name", user.getName());
        mixPanel.o().d("$email", user.getEmail());
        g.d dVarO = mixPanel.o();
        if (user.isPremiumPlan()) {
            str = "AminoPlus";
        } else {
            str = "Free";
        }
        dVarO.d("plan", str);
    }

    public final void logout() {
        getMixPanel().D();
    }
}
