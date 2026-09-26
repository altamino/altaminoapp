package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.common.AdData;
import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CustomAudienceManager {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension
    private static final class Api33Ext4Impl extends CustomAudienceManager {

        @NotNull
        private final android.adservices.customaudience.CustomAudienceManager customAudienceManager;

        public Api33Ext4Impl(@NotNull android.adservices.customaudience.CustomAudienceManager customAudienceManager) {
            kotlin.jvm.internal.t.j(customAudienceManager, "customAudienceManager");
            this.customAudienceManager = customAudienceManager;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext4Impl(@NotNull Context context) {
            kotlin.jvm.internal.t.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) l.a());
            kotlin.jvm.internal.t.i(systemService, "context.getSystemService…:class.java\n            )");
            this(w.a(systemService));
        }

        private final List<AdData> f(List<androidx.privacysandbox.ads.adservices.common.AdData> list) {
            ArrayList arrayList = new ArrayList();
            for (androidx.privacysandbox.ads.adservices.common.AdData adData : list) {
                AdData adDataBuild = a0.a().setMetadata(adData.a()).setRenderUri(adData.b()).build();
                kotlin.jvm.internal.t.i(adDataBuild, "Builder()\n              …                 .build()");
                arrayList.add(adDataBuild);
            }
            return arrayList;
        }

        private final AdSelectionSignals h(androidx.privacysandbox.ads.adservices.common.AdSelectionSignals adSelectionSignals) {
            if (adSelectionSignals == null) {
                return null;
            }
            return AdSelectionSignals.fromString(adSelectionSignals.a());
        }

        private final android.adservices.customaudience.TrustedBiddingData l(TrustedBiddingData trustedBiddingData) {
            if (trustedBiddingData == null) {
                return null;
            }
            return y.a().setTrustedBiddingKeys(trustedBiddingData.a()).setTrustedBiddingUri(trustedBiddingData.b()).build();
        }

        @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object a(@NotNull JoinCustomAudienceRequest joinCustomAudienceRequest, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.customAudienceManager.joinCustomAudience(j(joinCustomAudienceRequest), new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object b(@NotNull LeaveCustomAudienceRequest leaveCustomAudienceRequest, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.customAudienceManager.leaveCustomAudience(k(leaveCustomAudienceRequest), new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        private final AdTechIdentifier g(androidx.privacysandbox.ads.adservices.common.AdTechIdentifier adTechIdentifier) {
            AdTechIdentifier adTechIdentifierFromString = AdTechIdentifier.fromString(adTechIdentifier.a());
            kotlin.jvm.internal.t.i(adTechIdentifierFromString, "fromString(input.identifier)");
            return adTechIdentifierFromString;
        }

        private final android.adservices.customaudience.CustomAudience i(CustomAudience customAudience) {
            android.adservices.customaudience.CustomAudience customAudienceBuild = b0.a().setActivationTime(customAudience.a()).setAds(f(customAudience.b())).setBiddingLogicUri(customAudience.c()).setBuyer(g(customAudience.d())).setDailyUpdateUri(customAudience.e()).setExpirationTime(customAudience.f()).setName(customAudience.g()).setTrustedBiddingData(l(customAudience.h())).setUserBiddingSignals(h(customAudience.i())).build();
            kotlin.jvm.internal.t.i(customAudienceBuild, "Builder()\n              …\n                .build()");
            return customAudienceBuild;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.customaudience.JoinCustomAudienceRequest j(JoinCustomAudienceRequest joinCustomAudienceRequest) {
            android.adservices.customaudience.JoinCustomAudienceRequest joinCustomAudienceRequestBuild = c0.a().setCustomAudience(i(joinCustomAudienceRequest.a())).build();
            kotlin.jvm.internal.t.i(joinCustomAudienceRequestBuild, "Builder()\n              …\n                .build()");
            return joinCustomAudienceRequestBuild;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.customaudience.LeaveCustomAudienceRequest k(LeaveCustomAudienceRequest leaveCustomAudienceRequest) {
            android.adservices.customaudience.LeaveCustomAudienceRequest leaveCustomAudienceRequestBuild = z.a().setBuyer(g(leaveCustomAudienceRequest.a())).setName(leaveCustomAudienceRequest.b()).build();
            kotlin.jvm.internal.t.i(leaveCustomAudienceRequestBuild, "Builder()\n              …\n                .build()");
            return leaveCustomAudienceRequestBuild;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @RequiresPermission
    @Nullable
    public abstract Object a(@NotNull JoinCustomAudienceRequest joinCustomAudienceRequest, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @RequiresPermission
    @Nullable
    public abstract Object b(@NotNull LeaveCustomAudienceRequest leaveCustomAudienceRequest, @NotNull kotlin.coroutines.d<? super l0> dVar);
}
