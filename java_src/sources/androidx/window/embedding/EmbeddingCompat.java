package androidx.window.embedding;

import android.util.Log;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalWindowApi
public final class EmbeddingCompat implements EmbeddingInterfaceCompat {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final boolean DEBUG = true;

    @NotNull
    private static final String TAG = "EmbeddingCompat";

    @NotNull
    private final EmbeddingAdapter adapter;

    @NotNull
    private final ActivityEmbeddingComponent embeddingExtension;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @Nullable
        public final Integer b() {
            try {
                return Integer.valueOf(WindowExtensionsProvider.getWindowExtensions().getVendorApiLevel());
            } catch (NoClassDefFoundError unused) {
                Log.d(EmbeddingCompat.TAG, "Embedding extension version not found");
                return null;
            } catch (UnsupportedOperationException unused2) {
                Log.d(EmbeddingCompat.TAG, "Stub Extension");
                return null;
            }
        }

        public final boolean c() {
            try {
                return WindowExtensionsProvider.getWindowExtensions().getActivityEmbeddingComponent() != null;
            } catch (NoClassDefFoundError unused) {
                Log.d(EmbeddingCompat.TAG, "Embedding extension version not found");
                return false;
            } catch (UnsupportedOperationException unused2) {
                Log.d(EmbeddingCompat.TAG, "Stub Extension");
                return false;
            }
        }

        @NotNull
        public final ActivityEmbeddingComponent a() {
            if (c()) {
                ActivityEmbeddingComponent activityEmbeddingComponent = WindowExtensionsProvider.getWindowExtensions().getActivityEmbeddingComponent();
                if (activityEmbeddingComponent == null) {
                    return new EmptyEmbeddingComponent();
                }
                return activityEmbeddingComponent;
            }
            return new EmptyEmbeddingComponent();
        }
    }

    public EmbeddingCompat(@NotNull ActivityEmbeddingComponent embeddingExtension, @NotNull EmbeddingAdapter adapter) {
        t.j(embeddingExtension, "embeddingExtension");
        t.j(adapter, "adapter");
        this.embeddingExtension = embeddingExtension;
        this.adapter = adapter;
    }

    public EmbeddingCompat() {
        this(Companion.a(), new EmbeddingAdapter());
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void a(@NotNull EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallback) {
        t.j(embeddingCallback, "embeddingCallback");
        this.embeddingExtension.setSplitInfoCallback(a.a(new EmbeddingTranslatingCallback(embeddingCallback, this.adapter)));
    }
}
