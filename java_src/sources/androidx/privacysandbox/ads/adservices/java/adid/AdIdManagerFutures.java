package androidx.privacysandbox.ads.adservices.java.adid;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.adid.AdId;
import androidx.privacysandbox.ads.adservices.adid.AdIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AdIdManagerFutures {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext4JavaImpl extends AdIdManagerFutures {

        @NotNull
        private final AdIdManager mAdIdManager;

        public Api33Ext4JavaImpl(@NotNull AdIdManager mAdIdManager) {
            t.j(mAdIdManager, "mAdIdManager");
            this.mAdIdManager = mAdIdManager;
        }

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<AdId> b() {
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(this, null), 3, null), null, 1, null);
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
