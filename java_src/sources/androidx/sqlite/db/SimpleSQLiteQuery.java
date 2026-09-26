package androidx.sqlite.db;

import android.annotation.SuppressLint;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private final Object[] bindArgs;

    @NotNull
    private final String query;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        private final void a(SupportSQLiteProgram supportSQLiteProgram, int i10, Object obj) {
            if (obj == null) {
                supportSQLiteProgram.P(i10);
                return;
            }
            if (obj instanceof byte[]) {
                supportSQLiteProgram.K(i10, (byte[]) obj);
                return;
            }
            if (obj instanceof Float) {
                supportSQLiteProgram.Y(i10, ((Number) obj).floatValue());
                return;
            }
            if (obj instanceof Double) {
                supportSQLiteProgram.Y(i10, ((Number) obj).doubleValue());
                return;
            }
            if (obj instanceof Long) {
                supportSQLiteProgram.I(i10, ((Number) obj).longValue());
                return;
            }
            if (obj instanceof Integer) {
                supportSQLiteProgram.I(i10, ((Number) obj).intValue());
                return;
            }
            if (obj instanceof Short) {
                supportSQLiteProgram.I(i10, ((Number) obj).shortValue());
                return;
            }
            if (obj instanceof Byte) {
                supportSQLiteProgram.I(i10, ((Number) obj).byteValue());
                return;
            }
            if (obj instanceof String) {
                supportSQLiteProgram.s(i10, (String) obj);
                return;
            }
            if (obj instanceof Boolean) {
                supportSQLiteProgram.I(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
                return;
            }
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
        }

        @SuppressLint({"SyntheticAccessor"})
        public final void b(@NotNull SupportSQLiteProgram statement, @Nullable Object[] objArr) {
            t.j(statement, "statement");
            if (objArr == null) {
                return;
            }
            int length = objArr.length;
            int i10 = 0;
            while (i10 < length) {
                Object obj = objArr[i10];
                i10++;
                a(statement, i10, obj);
            }
        }
    }

    public SimpleSQLiteQuery(@NotNull String query, @Nullable Object[] objArr) {
        t.j(query, "query");
        this.query = query;
        this.bindArgs = objArr;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    @NotNull
    public String d() {
        return this.query;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SimpleSQLiteQuery(@NotNull String query) {
        this(query, null);
        t.j(query, "query");
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void e(@NotNull SupportSQLiteProgram statement) {
        t.j(statement, "statement");
        Companion.b(statement, this.bindArgs);
    }
}
