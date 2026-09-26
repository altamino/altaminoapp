package androidx.privacysandbox.ads.adservices.java.customaudience;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager;
import androidx.privacysandbox.ads.adservices.customaudience.JoinCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.customaudience.LeaveCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CustomAudienceManagerFutures {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext4JavaImpl extends CustomAudienceManagerFutures {

        @Nullable
        private final CustomAudienceManager mCustomAudienceManager;

        public Api33Ext4JavaImpl(@Nullable CustomAudienceManager customAudienceManager) {
            this.mCustomAudienceManager = customAudienceManager;
        }

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> b(@NotNull JoinCustomAudienceRequest request) {
            t.j(request, "request");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1(this, request, null), 3, null), null, 1, null);
        }

        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<l0> c(@NotNull LeaveCustomAudienceRequest request) {
            t.j(request, "request");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1(this, request, null), 3, null), null, 1, null);
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
