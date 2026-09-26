package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AdSelectionManager {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @RequiresExtension
    static final class Api33Ext4Impl extends AdSelectionManager {

        @NotNull
        private final android.adservices.adselection.AdSelectionManager mAdSelectionManager;

        public Api33Ext4Impl(@NotNull android.adservices.adselection.AdSelectionManager mAdSelectionManager) {
            kotlin.jvm.internal.t.j(mAdSelectionManager, "mAdSelectionManager");
            this.mAdSelectionManager = mAdSelectionManager;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext4Impl(@NotNull Context context) {
            kotlin.jvm.internal.t.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) m.a());
            kotlin.jvm.internal.t.i(systemService, "context.getSystemService…:class.java\n            )");
            this(n.a(systemService));
        }

        private final List<AdTechIdentifier> g(List<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier> list) {
            ArrayList arrayList = new ArrayList();
            Iterator<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier> it = list.iterator();
            while (it.hasNext()) {
                AdTechIdentifier adTechIdentifierFromString = AdTechIdentifier.fromString(it.next().a());
                kotlin.jvm.internal.t.i(adTechIdentifierFromString, "fromString(buyer.identifier)");
                arrayList.add(adTechIdentifierFromString);
            }
            return arrayList;
        }

        private final Map<AdTechIdentifier, AdSelectionSignals> h(Map<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier, androidx.privacysandbox.ads.adservices.common.AdSelectionSignals> map) {
            AdSelectionSignals adSelectionSignalsF;
            HashMap map2 = new HashMap();
            for (androidx.privacysandbox.ads.adservices.common.AdTechIdentifier adTechIdentifier : map.keySet()) {
                AdTechIdentifier adTechIdentifierFromString = AdTechIdentifier.fromString(adTechIdentifier.a());
                kotlin.jvm.internal.t.i(adTechIdentifierFromString, "fromString(key.identifier)");
                if (map.get(adTechIdentifier) != null) {
                    androidx.privacysandbox.ads.adservices.common.AdSelectionSignals adSelectionSignals = map.get(adTechIdentifier);
                    kotlin.jvm.internal.t.g(adSelectionSignals);
                    adSelectionSignalsF = f(adSelectionSignals);
                } else {
                    adSelectionSignalsF = null;
                }
                map2.put(adTechIdentifierFromString, adSelectionSignalsF);
            }
            return map2;
        }

        private final AdSelectionOutcome j(android.adservices.adselection.AdSelectionOutcome adSelectionOutcome) {
            long adSelectionId = adSelectionOutcome.getAdSelectionId();
            Uri renderUri = adSelectionOutcome.getRenderUri();
            kotlin.jvm.internal.t.i(renderUri, "response.renderUri");
            return new AdSelectionOutcome(adSelectionId, renderUri);
        }

        @RequiresPermission
        private final Object k(android.adservices.adselection.AdSelectionConfig adSelectionConfig, kotlin.coroutines.d<? super android.adservices.adselection.AdSelectionOutcome> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mAdSelectionManager.selectAds(adSelectionConfig, new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU;
        }

        @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object a(@NotNull ReportImpressionRequest reportImpressionRequest, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.mAdSelectionManager.reportImpression(i(reportImpressionRequest), new androidx.media3.exoplayer.dash.offline.a(), OutcomeReceiverKt.a(pVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object b(@NotNull AdSelectionConfig adSelectionConfig, @NotNull kotlin.coroutines.d<? super AdSelectionOutcome> dVar) throws Throwable {
            AdSelectionManager$Api33Ext4Impl$selectAds$1 adSelectionManager$Api33Ext4Impl$selectAds$1;
            Api33Ext4Impl api33Ext4Impl;
            if (dVar instanceof AdSelectionManager$Api33Ext4Impl$selectAds$1) {
                adSelectionManager$Api33Ext4Impl$selectAds$1 = (AdSelectionManager$Api33Ext4Impl$selectAds$1) dVar;
                int i10 = adSelectionManager$Api33Ext4Impl$selectAds$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    adSelectionManager$Api33Ext4Impl$selectAds$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    adSelectionManager$Api33Ext4Impl$selectAds$1 = new AdSelectionManager$Api33Ext4Impl$selectAds$1(this, dVar);
                }
            } else {
                adSelectionManager$Api33Ext4Impl$selectAds$1 = new AdSelectionManager$Api33Ext4Impl$selectAds$1(this, dVar);
            }
            Object objK = adSelectionManager$Api33Ext4Impl$selectAds$1.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = adSelectionManager$Api33Ext4Impl$selectAds$1.label;
            if (i11 == 0) {
                w.b(objK);
                android.adservices.adselection.AdSelectionConfig adSelectionConfigE = e(adSelectionConfig);
                adSelectionManager$Api33Ext4Impl$selectAds$1.L$0 = this;
                adSelectionManager$Api33Ext4Impl$selectAds$1.label = 1;
                objK = k(adSelectionConfigE, adSelectionManager$Api33Ext4Impl$selectAds$1);
                if (objK == objE) {
                    return objE;
                }
                api33Ext4Impl = this;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                api33Ext4Impl = (Api33Ext4Impl) adSelectionManager$Api33Ext4Impl$selectAds$1.L$0;
                w.b(objK);
            }
            return api33Ext4Impl.j(a.a(objK));
        }

        private final android.adservices.adselection.AdSelectionConfig e(AdSelectionConfig adSelectionConfig) {
            android.adservices.adselection.AdSelectionConfig adSelectionConfigBuild = q.a().setAdSelectionSignals(f(adSelectionConfig.a())).setCustomAudienceBuyers(g(adSelectionConfig.b())).setDecisionLogicUri(adSelectionConfig.c()).setSeller(AdTechIdentifier.fromString(adSelectionConfig.e().a())).setPerBuyerSignals(h(adSelectionConfig.d())).setSellerSignals(f(adSelectionConfig.f())).setTrustedScoringSignalsUri(adSelectionConfig.g()).build();
            kotlin.jvm.internal.t.i(adSelectionConfigBuild, "Builder()\n              …\n                .build()");
            return adSelectionConfigBuild;
        }

        private final AdSelectionSignals f(androidx.privacysandbox.ads.adservices.common.AdSelectionSignals adSelectionSignals) {
            AdSelectionSignals adSelectionSignalsFromString = AdSelectionSignals.fromString(adSelectionSignals.a());
            kotlin.jvm.internal.t.i(adSelectionSignalsFromString, "fromString(request.signals)");
            return adSelectionSignalsFromString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.adservices.adselection.ReportImpressionRequest i(ReportImpressionRequest reportImpressionRequest) {
            p.a();
            return o.a(reportImpressionRequest.b(), e(reportImpressionRequest.a()));
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
    public abstract Object a(@NotNull ReportImpressionRequest reportImpressionRequest, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @RequiresPermission
    @Nullable
    public abstract Object b(@NotNull AdSelectionConfig adSelectionConfig, @NotNull kotlin.coroutines.d<? super AdSelectionOutcome> dVar);
}
