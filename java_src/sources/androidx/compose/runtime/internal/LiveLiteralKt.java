package androidx.compose.runtime.internal;

import androidx.compose.runtime.MutableState;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class LiveLiteralKt {
    private static boolean isLiveLiteralsEnabled;

    @NotNull
    private static final HashMap<String, MutableState<Object>> liveLiteralCache = new HashMap<>();
}
