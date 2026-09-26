package androidx.room.util;

import android.annotation.SuppressLint;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.room.ColumnInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public final class TableInfo {
    public static final int CREATED_FROM_DATABASE = 2;
    public static final int CREATED_FROM_ENTITY = 1;
    public static final int CREATED_FROM_UNKNOWN = 0;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public final Map<String, Column> columns;

    @NotNull
    public final Set<ForeignKey> foreignKeys;

    @Nullable
    public final Set<Index> indices;

    @NotNull
    public final String name;

    public static final class Column {

        @NotNull
        public static final Companion Companion = new Companion(null);
        public final int affinity;
        public final int createdFrom;

        @Nullable
        public final String defaultValue;

        @NotNull
        public final String name;
        public final boolean notNull;
        public final int primaryKeyPosition;

        @NotNull
        public final String type;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            @SuppressLint({"SyntheticAccessor"})
            @VisibleForTesting
            public final boolean b(@NotNull String current, @Nullable String str) {
                t.j(current, "current");
                if (t.e(current, str)) {
                    return true;
                }
                if (!a(current)) {
                    return false;
                }
                String strSubstring = current.substring(1, current.length() - 1);
                t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                return t.e(u.b1(strSubstring).toString(), str);
            }

            private final boolean a(String str) {
                if (str.length() == 0) {
                    return false;
                }
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                while (i10 < str.length()) {
                    char cCharAt = str.charAt(i10);
                    int i13 = i12 + 1;
                    if (i12 == 0 && cCharAt != '(') {
                        return false;
                    }
                    if (cCharAt == '(') {
                        i11++;
                    } else if (cCharAt == ')' && (i11 = i11 - 1) == 0 && i12 != str.length() - 1) {
                        return false;
                    }
                    i10++;
                    i12 = i13;
                }
                if (i11 != 0) {
                    return false;
                }
                return true;
            }
        }

        public Column(@NotNull String name, @NotNull String type, boolean z6, int i10, @Nullable String str, int i11) {
            t.j(name, "name");
            t.j(type, "type");
            this.name = name;
            this.type = type;
            this.notNull = z6;
            this.primaryKeyPosition = i10;
            this.defaultValue = str;
            this.createdFrom = i11;
            this.affinity = a(type);
        }

        @ColumnInfo.SQLiteTypeAffinity
        private final int a(String str) {
            if (str == null) {
                return 5;
            }
            Locale US = Locale.US;
            t.i(US, "US");
            String upperCase = str.toUpperCase(US);
            t.i(upperCase, "this as java.lang.String).toUpperCase(locale)");
            if (u.P(upperCase, "INT", false, 2, null)) {
                return 3;
            }
            if (u.P(upperCase, "CHAR", false, 2, null) || u.P(upperCase, "CLOB", false, 2, null) || u.P(upperCase, "TEXT", false, 2, null)) {
                return 2;
            }
            if (u.P(upperCase, "BLOB", false, 2, null)) {
                return 5;
            }
            return (u.P(upperCase, "REAL", false, 2, null) || u.P(upperCase, "FLOA", false, 2, null) || u.P(upperCase, "DOUB", false, 2, null)) ? 4 : 1;
        }

        public boolean equals(@Nullable Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Column) || this.primaryKeyPosition != ((Column) obj).primaryKeyPosition) {
                return false;
            }
            Column column = (Column) obj;
            if (!t.e(this.name, column.name) || this.notNull != column.notNull) {
                return false;
            }
            if (this.createdFrom == 1 && column.createdFrom == 2 && (str3 = this.defaultValue) != null && !Companion.b(str3, column.defaultValue)) {
                return false;
            }
            if (this.createdFrom == 2 && column.createdFrom == 1 && (str2 = column.defaultValue) != null && !Companion.b(str2, this.defaultValue)) {
                return false;
            }
            int i10 = this.createdFrom;
            return (i10 == 0 || i10 != column.createdFrom || ((str = this.defaultValue) == null ? column.defaultValue == null : Companion.b(str, column.defaultValue))) && this.affinity == column.affinity;
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.affinity) * 31) + (this.notNull ? 1231 : 1237)) * 31) + this.primaryKeyPosition;
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Column{name='");
            sb.append(this.name);
            sb.append("', type='");
            sb.append(this.type);
            sb.append("', affinity='");
            sb.append(this.affinity);
            sb.append("', notNull=");
            sb.append(this.notNull);
            sb.append(", primaryKeyPosition=");
            sb.append(this.primaryKeyPosition);
            sb.append(", defaultValue='");
            String str = this.defaultValue;
            if (str == null) {
                str = "undefined";
            }
            sb.append(str);
            sb.append("'}");
            return sb.toString();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Column(@NotNull String name, @NotNull String type, boolean z6, int i10) {
            this(name, type, z6, i10, null, 0);
            t.j(name, "name");
            t.j(type, "type");
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final TableInfo a(@NotNull SupportSQLiteDatabase database, @NotNull String tableName) {
            t.j(database, "database");
            t.j(tableName, "tableName");
            return TableInfoKt.f(database, tableName);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CreatedFrom {
    }

    @RestrictTo
    public static final class ForeignKey {

        @NotNull
        public final List<String> columnNames;

        @NotNull
        public final String onDelete;

        @NotNull
        public final String onUpdate;

        @NotNull
        public final List<String> referenceColumnNames;

        @NotNull
        public final String referenceTable;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForeignKey)) {
                return false;
            }
            ForeignKey foreignKey = (ForeignKey) obj;
            if (t.e(this.referenceTable, foreignKey.referenceTable) && t.e(this.onDelete, foreignKey.onDelete) && t.e(this.onUpdate, foreignKey.onUpdate) && t.e(this.columnNames, foreignKey.columnNames)) {
                return t.e(this.referenceColumnNames, foreignKey.referenceColumnNames);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.referenceTable.hashCode() * 31) + this.onDelete.hashCode()) * 31) + this.onUpdate.hashCode()) * 31) + this.columnNames.hashCode()) * 31) + this.referenceColumnNames.hashCode();
        }

        @NotNull
        public String toString() {
            return "ForeignKey{referenceTable='" + this.referenceTable + "', onDelete='" + this.onDelete + " +', onUpdate='" + this.onUpdate + "', columnNames=" + this.columnNames + ", referenceColumnNames=" + this.referenceColumnNames + b.END_OBJ;
        }

        public ForeignKey(@NotNull String referenceTable, @NotNull String onDelete, @NotNull String onUpdate, @NotNull List<String> columnNames, @NotNull List<String> referenceColumnNames) {
            t.j(referenceTable, "referenceTable");
            t.j(onDelete, "onDelete");
            t.j(onUpdate, "onUpdate");
            t.j(columnNames, "columnNames");
            t.j(referenceColumnNames, "referenceColumnNames");
            this.referenceTable = referenceTable;
            this.onDelete = onDelete;
            this.onUpdate = onUpdate;
            this.columnNames = columnNames;
            this.referenceColumnNames = referenceColumnNames;
        }
    }

    public static final class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {

        @NotNull
        private final String from;
        private final int id;
        private final int sequence;

        @NotNull
        private final String to;

        @NotNull
        public final String b() {
            return this.from;
        }

        public final int c() {
            return this.id;
        }

        @NotNull
        public final String d() {
            return this.to;
        }

        public ForeignKeyWithSequence(int i10, int i11, @NotNull String from, @NotNull String to) {
            t.j(from, "from");
            t.j(to, "to");
            this.id = i10;
            this.sequence = i11;
            this.from = from;
            this.to = to;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull ForeignKeyWithSequence other) {
            t.j(other, "other");
            int i10 = this.id - other.id;
            if (i10 == 0) {
                return this.sequence - other.sequence;
            }
            return i10;
        }
    }

    @RestrictTo
    public static final class Index {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final String DEFAULT_PREFIX = "index_";

        @NotNull
        public final List<String> columns;

        @NotNull
        public final String name;

        @NotNull
        public List<String> orders;
        public final boolean unique;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.util.ArrayList] */
        public Index(@NotNull String name, boolean z6, @NotNull List<String> columns, @NotNull List<String> orders) {
            t.j(name, "name");
            t.j(columns, "columns");
            t.j(orders, "orders");
            this.name = name;
            this.unique = z6;
            this.columns = columns;
            this.orders = orders;
            List<String> arrayList = orders;
            if (arrayList.isEmpty()) {
                int size = columns.size();
                arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    arrayList.add(androidx.room.Index.Order.ASC.name());
                }
            }
            this.orders = (List) arrayList;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Index)) {
                return false;
            }
            Index index = (Index) obj;
            if (this.unique == index.unique && t.e(this.columns, index.columns) && t.e(this.orders, index.orders)) {
                return kotlin.text.t.K(this.name, DEFAULT_PREFIX, false, 2, null) ? kotlin.text.t.K(index.name, DEFAULT_PREFIX, false, 2, null) : t.e(this.name, index.name);
            }
            return false;
        }

        public int hashCode() {
            return ((((((kotlin.text.t.K(this.name, DEFAULT_PREFIX, false, 2, null) ? -1184239155 : this.name.hashCode()) * 31) + (this.unique ? 1 : 0)) * 31) + this.columns.hashCode()) * 31) + this.orders.hashCode();
        }

        @NotNull
        public String toString() {
            return "Index{name='" + this.name + "', unique=" + this.unique + ", columns=" + this.columns + ", orders=" + this.orders + "'}";
        }

        public Index(@NotNull String name, boolean z6, @NotNull List<String> columns) {
            t.j(name, "name");
            t.j(columns, "columns");
            int size = columns.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(androidx.room.Index.Order.ASC.name());
            }
            this(name, z6, columns, arrayList);
        }
    }

    public TableInfo(@NotNull String name, @NotNull Map<String, Column> columns, @NotNull Set<ForeignKey> foreignKeys, @Nullable Set<Index> set) {
        t.j(name, "name");
        t.j(columns, "columns");
        t.j(foreignKeys, "foreignKeys");
        this.name = name;
        this.columns = columns;
        this.foreignKeys = foreignKeys;
        this.indices = set;
    }

    @NotNull
    public static final TableInfo a(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, @NotNull String str) {
        return Companion.a(supportSQLiteDatabase, str);
    }

    public boolean equals(@Nullable Object obj) {
        Set<Index> set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo)) {
            return false;
        }
        TableInfo tableInfo = (TableInfo) obj;
        if (!t.e(this.name, tableInfo.name) || !t.e(this.columns, tableInfo.columns) || !t.e(this.foreignKeys, tableInfo.foreignKeys)) {
            return false;
        }
        Set<Index> set2 = this.indices;
        if (set2 == null || (set = tableInfo.indices) == null) {
            return true;
        }
        return t.e(set2, set);
    }

    public /* synthetic */ TableInfo(String str, Map map, Set set, Set set2, int i10, k kVar) {
        this(str, map, set, (i10 & 8) != 0 ? null : set2);
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.columns.hashCode()) * 31) + this.foreignKeys.hashCode();
    }

    @NotNull
    public String toString() {
        return "TableInfo{name='" + this.name + "', columns=" + this.columns + ", foreignKeys=" + this.foreignKeys + ", indices=" + this.indices + b.END_OBJ;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TableInfo(@NotNull String name, @NotNull Map<String, Column> columns, @NotNull Set<ForeignKey> foreignKeys) {
        this(name, columns, foreignKeys, y0.e());
        t.j(name, "name");
        t.j(columns, "columns");
        t.j(foreignKeys, "foreignKeys");
    }
}
