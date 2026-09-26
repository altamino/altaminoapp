package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@ExperimentalFoundationApi
public interface PinnableParent {

    @ExperimentalFoundationApi
    public interface PinnedItemsHandle {
        void a();
    }

    @NotNull
    PinnedItemsHandle a();
}
