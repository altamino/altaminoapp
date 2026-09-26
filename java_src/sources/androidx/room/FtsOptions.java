package androidx.room;

import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class FtsOptions {

    @NotNull
    public static final FtsOptions INSTANCE = new FtsOptions();

    @NotNull
    public static final String TOKENIZER_ICU = "icu";

    @NotNull
    public static final String TOKENIZER_PORTER = "porter";

    @NotNull
    public static final String TOKENIZER_SIMPLE = "simple";

    @RequiresApi
    @NotNull
    public static final String TOKENIZER_UNICODE61 = "unicode61";

    public enum MatchInfo {
        FTS3,
        FTS4
    }

    public enum Order {
        ASC,
        DESC
    }

    private FtsOptions() {
    }
}
