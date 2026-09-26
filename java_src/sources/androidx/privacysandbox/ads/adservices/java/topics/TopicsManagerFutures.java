package androidx.privacysandbox.ads.adservices.java.topics;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.TopicsManager;
import com.google.common.util.concurrent.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class TopicsManagerFutures {

    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext4JavaImpl extends TopicsManagerFutures {

        @NotNull
        private final TopicsManager mTopicsManager;

        public Api33Ext4JavaImpl(@NotNull TopicsManager mTopicsManager) {
            t.j(mTopicsManager, "mTopicsManager");
            this.mTopicsManager = mTopicsManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures
        @RequiresPermission
        @DoNotInline
        @NotNull
        public k<GetTopicsResponse> b(@NotNull GetTopicsRequest request) {
            t.j(request, "request");
            return CoroutineAdapterKt.c(kotlinx.coroutines.k.b(p0.a(e1.c()), null, null, new TopicsManagerFutures$Api33Ext4JavaImpl$getTopicsAsync$1(this, request, null), 3, null), null, 1, null);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @Nullable
        public final TopicsManagerFutures a(@NotNull Context context) {
            t.j(context, "context");
            TopicsManager topicsManagerA = TopicsManager.Companion.a(context);
            if (topicsManagerA != null) {
                return new Api33Ext4JavaImpl(topicsManagerA);
            }
            return null;
        }
    }

    @Nullable
    public static final TopicsManagerFutures a(@NotNull Context context) {
        return Companion.a(context);
    }

    @RequiresPermission
    @NotNull
    public abstract k<GetTopicsResponse> b(@NotNull GetTopicsRequest getTopicsRequest);
}
