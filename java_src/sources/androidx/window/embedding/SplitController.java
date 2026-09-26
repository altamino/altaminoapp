package androidx.window.embedding;

import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalWindowApi
public final class SplitController {

    @Nullable
    private static volatile SplitController globalInstance;
    public static final boolean sDebug = false;

    @NotNull
    private final EmbeddingBackend embeddingBackend;

    @NotNull
    private Set<? extends EmbeddingRule> staticSplitRules;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ReentrantLock globalLock = new ReentrantLock();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ SplitController(k kVar) {
        this();
    }

    private SplitController() {
        this.embeddingBackend = ExtensionEmbeddingBackend.Companion.a();
        this.staticSplitRules = y0.e();
    }
}
