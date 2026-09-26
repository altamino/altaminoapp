package androidx.window.embedding;

import androidx.window.core.ExperimentalWindowApi;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalWindowApi
public interface EmbeddingInterfaceCompat {

    public interface EmbeddingCallbackInterface {
        void a(@NotNull List<SplitInfo> list);
    }

    void a(@NotNull EmbeddingCallbackInterface embeddingCallbackInterface);
}
