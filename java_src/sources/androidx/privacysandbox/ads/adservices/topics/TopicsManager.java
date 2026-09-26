package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class TopicsManager {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final TopicsManager a(@NotNull Context context) {
            t.j(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.a() >= 5) {
                return new TopicsManagerApi33Ext5Impl(context);
            }
            if (adServicesInfo.a() == 4) {
                return new TopicsManagerApi33Ext4Impl(context);
            }
            return null;
        }
    }

    @RequiresPermission
    @Nullable
    public abstract Object a(@NotNull GetTopicsRequest getTopicsRequest, @NotNull kotlin.coroutines.d<? super GetTopicsResponse> dVar);
}
