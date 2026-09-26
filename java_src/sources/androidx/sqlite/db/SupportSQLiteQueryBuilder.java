package androidx.sqlite.db;

import java.util.regex.Pattern;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportSQLiteQueryBuilder {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Pattern limitPattern = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");

    @Nullable
    private Object[] bindArgs;

    @Nullable
    private String[] columns;
    private boolean distinct;

    @Nullable
    private String groupBy;

    @Nullable
    private String having;

    @Nullable
    private String limit;

    @Nullable
    private String orderBy;

    @Nullable
    private String selection;

    @NotNull
    private final String table;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ SupportSQLiteQueryBuilder(String str, k kVar) {
        this(str);
    }

    private SupportSQLiteQueryBuilder(String str) {
        this.table = str;
    }
}
