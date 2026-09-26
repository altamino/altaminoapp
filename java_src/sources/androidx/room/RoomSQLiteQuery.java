package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public final class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;
    public static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;
    public static final int POOL_LIMIT = 15;
    private static final int STRING = 4;
    private int argCount;

    @NotNull
    private final int[] bindingTypes;

    @NotNull
    public final byte[][] blobBindings;

    @VisibleForTesting
    private final int capacity;

    @NotNull
    public final double[] doubleBindings;

    @NotNull
    public final long[] longBindings;

    @Nullable
    private volatile String query;

    @NotNull
    public final String[] stringBindings;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final TreeMap<Integer, RoomSQLiteQuery> queryPool = new TreeMap<>();

    @Retention(RetentionPolicy.SOURCE)
    public @interface Binding {
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final void b() {
            TreeMap<Integer, RoomSQLiteQuery> treeMap = RoomSQLiteQuery.queryPool;
            if (treeMap.size() <= 15) {
                return;
            }
            int size = treeMap.size() - 10;
            Iterator<Integer> it = treeMap.descendingKeySet().iterator();
            kotlin.jvm.internal.t.i(it, "queryPool.descendingKeySet().iterator()");
            while (true) {
                int i10 = size - 1;
                if (size <= 0) {
                    return;
                }
                it.next();
                it.remove();
                size = i10;
            }
        }

        @NotNull
        public final RoomSQLiteQuery a(@NotNull String query, int i10) {
            kotlin.jvm.internal.t.j(query, "query");
            TreeMap<Integer, RoomSQLiteQuery> treeMap = RoomSQLiteQuery.queryPool;
            synchronized (treeMap) {
                Map.Entry<Integer, RoomSQLiteQuery> entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
                if (entryCeilingEntry != null) {
                    treeMap.remove(entryCeilingEntry.getKey());
                    RoomSQLiteQuery sqliteQuery = entryCeilingEntry.getValue();
                    sqliteQuery.i(query, i10);
                    kotlin.jvm.internal.t.i(sqliteQuery, "sqliteQuery");
                    return sqliteQuery;
                }
                l0 l0Var = l0.INSTANCE;
                RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(i10, null);
                roomSQLiteQuery.i(query, i10);
                return roomSQLiteQuery;
            }
        }
    }

    public /* synthetic */ RoomSQLiteQuery(int i10, kotlin.jvm.internal.k kVar) {
        this(i10);
    }

    @NotNull
    public static final RoomSQLiteQuery a(@NotNull String str, int i10) {
        return Companion.a(str, i10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public int h() {
        return this.argCount;
    }

    public final void i(@NotNull String query, int i10) {
        kotlin.jvm.internal.t.j(query, "query");
        this.query = query;
        this.argCount = i10;
    }

    private RoomSQLiteQuery(int i10) {
        this.capacity = i10;
        int i11 = i10 + 1;
        this.bindingTypes = new int[i11];
        this.longBindings = new long[i11];
        this.doubleBindings = new double[i11];
        this.stringBindings = new String[i11];
        this.blobBindings = new byte[i11][];
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void I(int i10, long j6) {
        this.bindingTypes[i10] = 2;
        this.longBindings[i10] = j6;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void P(int i10) {
        this.bindingTypes[i10] = 1;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void Y(int i10, double d) {
        this.bindingTypes[i10] = 3;
        this.doubleBindings[i10] = d;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    @NotNull
    public String d() {
        String str = this.query;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    public final void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = queryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.capacity), this);
            Companion.b();
            l0 l0Var = l0.INSTANCE;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void K(int i10, @NotNull byte[] value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.bindingTypes[i10] = 5;
        this.blobBindings[i10] = value;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void e(@NotNull SupportSQLiteProgram statement) {
        kotlin.jvm.internal.t.j(statement, "statement");
        int iH = h();
        if (1 <= iH) {
            int i10 = 1;
            while (true) {
                int i11 = this.bindingTypes[i10];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 4) {
                                if (i11 == 5) {
                                    byte[] bArr = this.blobBindings[i10];
                                    if (bArr != null) {
                                        statement.K(i10, bArr);
                                    } else {
                                        throw new IllegalArgumentException("Required value was null.".toString());
                                    }
                                }
                            } else {
                                String str = this.stringBindings[i10];
                                if (str != null) {
                                    statement.s(i10, str);
                                } else {
                                    throw new IllegalArgumentException("Required value was null.".toString());
                                }
                            }
                        } else {
                            statement.Y(i10, this.doubleBindings[i10]);
                        }
                    } else {
                        statement.I(i10, this.longBindings[i10]);
                    }
                } else {
                    statement.P(i10);
                }
                if (i10 != iH) {
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void s(int i10, @NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.bindingTypes[i10] = 4;
        this.stringBindings[i10] = value;
    }
}
