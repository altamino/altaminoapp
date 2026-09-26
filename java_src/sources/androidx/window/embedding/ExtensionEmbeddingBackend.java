package androidx.window.embedding;

import android.app.Activity;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.window.core.ExperimentalWindowApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
public final class ExtensionEmbeddingBackend implements EmbeddingBackend {

    @NotNull
    private static final String TAG = "EmbeddingBackend";

    @Nullable
    private static volatile ExtensionEmbeddingBackend globalInstance;

    @GuardedBy
    @VisibleForTesting
    @Nullable
    private EmbeddingInterfaceCompat embeddingExtension;

    @NotNull
    private final CopyOnWriteArrayList<SplitListenerWrapper> splitChangeCallbacks;

    @NotNull
    private final EmbeddingCallbackImpl splitInfoEmbeddingCallback;

    @NotNull
    private final CopyOnWriteArraySet<EmbeddingRule> splitRules;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ReentrantLock globalLock = new ReentrantLock();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        @VisibleForTesting
        public final boolean c(@Nullable Integer num) {
            return num != null && num.intValue() >= 1;
        }

        private Companion() {
        }

        private final EmbeddingInterfaceCompat b() {
            EmbeddingCompat embeddingCompat = null;
            try {
                EmbeddingCompat.Companion companion = EmbeddingCompat.Companion;
                if (c(companion.b()) && companion.c()) {
                    embeddingCompat = new EmbeddingCompat();
                }
            } catch (Throwable th) {
                Log.d(ExtensionEmbeddingBackend.TAG, t.s("Failed to load embedding extension: ", th));
            }
            if (embeddingCompat == null) {
                Log.d(ExtensionEmbeddingBackend.TAG, "No supported embedding extension found");
            }
            return embeddingCompat;
        }

        @NotNull
        public final ExtensionEmbeddingBackend a() {
            if (ExtensionEmbeddingBackend.globalInstance == null) {
                ReentrantLock reentrantLock = ExtensionEmbeddingBackend.globalLock;
                reentrantLock.lock();
                try {
                    if (ExtensionEmbeddingBackend.globalInstance == null) {
                        ExtensionEmbeddingBackend.globalInstance = new ExtensionEmbeddingBackend(ExtensionEmbeddingBackend.Companion.b());
                    }
                    l0 l0Var = l0.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            ExtensionEmbeddingBackend extensionEmbeddingBackend = ExtensionEmbeddingBackend.globalInstance;
            t.g(extensionEmbeddingBackend);
            return extensionEmbeddingBackend;
        }
    }

    public static final class SplitListenerWrapper {

        @NotNull
        private final Activity activity;

        @NotNull
        private final Consumer<List<SplitInfo>> callback;

        @NotNull
        private final Executor executor;

        @Nullable
        private List<SplitInfo> lastValue;

        public SplitListenerWrapper(@NotNull Activity activity, @NotNull Executor executor, @NotNull Consumer<List<SplitInfo>> callback) {
            t.j(activity, "activity");
            t.j(executor, "executor");
            t.j(callback, "callback");
            this.activity = activity;
            this.executor = executor;
            this.callback = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SplitListenerWrapper this$0, List splitsWithActivity) {
            t.j(this$0, "this$0");
            t.j(splitsWithActivity, "$splitsWithActivity");
            this$0.callback.accept(splitsWithActivity);
        }

        public final void b(@NotNull List<SplitInfo> splitInfoList) {
            t.j(splitInfoList, "splitInfoList");
            final ArrayList arrayList = new ArrayList();
            for (Object obj : splitInfoList) {
                if (((SplitInfo) obj).a(this.activity)) {
                    arrayList.add(obj);
                }
            }
            if (t.e(arrayList, this.lastValue)) {
                return;
            }
            this.lastValue = arrayList;
            this.executor.execute(new Runnable() { // from class: androidx.window.embedding.b
                @Override // java.lang.Runnable
                public final void run() {
                    ExtensionEmbeddingBackend.SplitListenerWrapper.c(this.f859a, arrayList);
                }
            });
        }
    }

    @NotNull
    public final CopyOnWriteArrayList<SplitListenerWrapper> d() {
        return this.splitChangeCallbacks;
    }

    public final class EmbeddingCallbackImpl implements EmbeddingInterfaceCompat.EmbeddingCallbackInterface {

        @Nullable
        private List<SplitInfo> lastInfo;
        final /* synthetic */ ExtensionEmbeddingBackend this$0;

        public EmbeddingCallbackImpl(ExtensionEmbeddingBackend this$0) {
            t.j(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // androidx.window.embedding.EmbeddingInterfaceCompat.EmbeddingCallbackInterface
        public void a(@NotNull List<SplitInfo> splitInfo) {
            t.j(splitInfo, "splitInfo");
            this.lastInfo = splitInfo;
            Iterator<SplitListenerWrapper> it = this.this$0.d().iterator();
            while (it.hasNext()) {
                it.next().b(splitInfo);
            }
        }
    }

    @VisibleForTesting
    public ExtensionEmbeddingBackend(@Nullable EmbeddingInterfaceCompat embeddingInterfaceCompat) {
        this.embeddingExtension = embeddingInterfaceCompat;
        EmbeddingCallbackImpl embeddingCallbackImpl = new EmbeddingCallbackImpl(this);
        this.splitInfoEmbeddingCallback = embeddingCallbackImpl;
        this.splitChangeCallbacks = new CopyOnWriteArrayList<>();
        EmbeddingInterfaceCompat embeddingInterfaceCompat2 = this.embeddingExtension;
        if (embeddingInterfaceCompat2 != null) {
            embeddingInterfaceCompat2.a(embeddingCallbackImpl);
        }
        this.splitRules = new CopyOnWriteArraySet<>();
    }
}
