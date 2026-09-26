package androidx.privacysandbox.ads.adservices.java.appsetid;

import androidx.annotation.DoNotInline;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetId;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AppSetIdManagerFutures {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext4JavaImpl extends AppSetIdManagerFutures {

        @NotNull
        private final AppSetIdManager mAppSetIdManager;

        public Api33Ext4JavaImpl(@NotNull AppSetIdManager mAppSetIdManager) {
            t.j(mAppSetIdManager, "mAppSetIdManager");
            this.mAppSetIdManager = mAppSetIdManager;
        }

        @DoNotInline
        @NotNull
        public k<AppSetId> b() {
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.a()), null, null, new AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1(this, null), 3, null), null, 1, null);
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
