package com.narvii.community;

import ai.medialab.medialabanalytics.MediaLabAnalytics;
import android.content.Context;
import android.content.ContextWrapper;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import kotlin.collections.s0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class DataMetricalHelper {

    @NotNull
    public static final DataMetricalHelper INSTANCE = new DataMetricalHelper();

    /* JADX WARN: Multi-variable type inference failed */
    private final NVContext getNVContextFrom(Context context) {
        if (context instanceof NVContext) {
            return (NVContext) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        Context baseContext = ((ContextWrapper) context).getBaseContext();
        kotlin.jvm.internal.t.i(baseContext, "getBaseContext(...)");
        return getNVContextFrom(baseContext);
    }

    public static final void sendCommunityClick(@NotNull Community community, @NotNull Context ctx) {
        kotlin.jvm.internal.t.j(community, "community");
        kotlin.jvm.internal.t.j(ctx, "ctx");
        String str = community.name;
        String strK = a0.b.k();
        String userIdOrAnonymous = INSTANCE.getUserIdOrAnonymous(ctx);
        MediaLabAnalytics.Companion companion = MediaLabAnalytics.Companion;
        companion.getInstance().initialize(ctx);
        companion.getInstance().trackEvent("Community Clicked", s0.l(w7.a0.a("community_name", str), w7.a0.a("device_id", strK), w7.a0.a("user_id", userIdOrAnonymous)));
    }

    private DataMetricalHelper() {
    }

    private final String getUserIdOrAnonymous(Context context) {
        NVContext nVContextFrom = getNVContextFrom(context);
        if (nVContextFrom != null) {
            Object service = nVContextFrom.getService("account");
            kotlin.jvm.internal.t.i(service, "getService(...)");
            String userId = ((AccountService) service).getUserId();
            if (userId == null) {
                return "anonymous";
            }
            return userId;
        }
        throw new IllegalArgumentException("Context must be an instance of NVContext");
    }
}
