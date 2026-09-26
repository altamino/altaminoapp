package androidx.privacysandbox.ads.adservices.java.adselection;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome;
import androidx.privacysandbox.ads.adservices.adselection.ReportImpressionRequest;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AdSelectionManagerFutures {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext4JavaImpl extends AdSelectionManagerFutures {

        @Nullable
        private final AdSelectionManager mAdSelectionManager;

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<AdSelectionOutcome> c(@NotNull AdSelectionConfig adSelectionConfig) {
            t.j(adSelectionConfig, "adSelectionConfig");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(this, adSelectionConfig, null), 3, null), null, 1, null);
        }

        public Api33Ext4JavaImpl(@Nullable AdSelectionManager adSelectionManager) {
            this.mAdSelectionManager = adSelectionManager;
        }

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> b(@NotNull ReportImpressionRequest reportImpressionRequest) {
            t.j(reportImpressionRequest, "reportImpressionRequest");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$reportImpressionAsync$1(this, reportImpressionRequest, null), 3, null), null, 1, null);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }
}
