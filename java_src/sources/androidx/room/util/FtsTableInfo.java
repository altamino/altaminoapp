package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public final class FtsTableInfo {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    @NotNull
    public final Set<String> columns;

    @NotNull
    public final String name;

    @NotNull
    public final Set<String> options;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @VisibleForTesting
        @NotNull
        public final Set<String> a(@NotNull String createStatement) {
            Character ch;
            t.j(createStatement, "createStatement");
            if (createStatement.length() == 0) {
                return y0.e();
            }
            String strSubstring = createStatement.substring(u.b0(createStatement, '(', 0, false, 6, null) + 1, u.h0(createStatement, ')', 0, false, 6, null));
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            ArrayList arrayList = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            int i10 = -1;
            int i11 = 0;
            int i12 = 0;
            while (i11 < strSubstring.length()) {
                char cCharAt = strSubstring.charAt(i11);
                int i13 = i12 + 1;
                if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '`') {
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(cCharAt));
                    } else {
                        Character ch2 = (Character) arrayDeque.peek();
                        if (ch2 != null && ch2.charValue() == cCharAt) {
                            arrayDeque.pop();
                        }
                    }
                } else if (cCharAt == '[') {
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(cCharAt));
                    }
                } else if (cCharAt == ']') {
                    if (!arrayDeque.isEmpty() && (ch = (Character) arrayDeque.peek()) != null && ch.charValue() == '[') {
                        arrayDeque.pop();
                    }
                } else if (cCharAt == ',' && arrayDeque.isEmpty()) {
                    String strSubstring2 = strSubstring.substring(i10 + 1, i12);
                    t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    int length = strSubstring2.length() - 1;
                    int i14 = 0;
                    boolean z6 = false;
                    while (i14 <= length) {
                        boolean z10 = t.l(strSubstring2.charAt(!z6 ? i14 : length), 32) <= 0;
                        if (z6) {
                            if (!z10) {
                                break;
                            }
                            length--;
                        } else if (z10) {
                            i14++;
                        } else {
                            z6 = true;
                        }
                    }
                    arrayList.add(strSubstring2.subSequence(i14, length + 1).toString());
                    i10 = i12;
                }
                i11++;
                i12 = i13;
            }
            String strSubstring3 = strSubstring.substring(i10 + 1);
            t.i(strSubstring3, "this as java.lang.String).substring(startIndex)");
            arrayList.add(u.b1(strSubstring3).toString());
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                String str = (String) obj;
                for (String str2 : FtsTableInfo.FTS_OPTIONS) {
                    if (kotlin.text.t.K(str, str2, false, 2, null)) {
                        arrayList2.add(obj);
                        break;
                    }
                }
            }
            return d0.Y0(arrayList2);
        }
    }

    public FtsTableInfo(@NotNull String name, @NotNull Set<String> columns, @NotNull Set<String> options) {
        t.j(name, "name");
        t.j(columns, "columns");
        t.j(options, "options");
        this.name = name;
        this.columns = columns;
        this.options = options;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FtsTableInfo(@NotNull String name, @NotNull Set<String> columns, @NotNull String createSql) {
        this(name, columns, Companion.a(createSql));
        t.j(name, "name");
        t.j(columns, "columns");
        t.j(createSql, "createSql");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FtsTableInfo)) {
            return false;
        }
        FtsTableInfo ftsTableInfo = (FtsTableInfo) obj;
        if (t.e(this.name, ftsTableInfo.name) && t.e(this.columns, ftsTableInfo.columns)) {
            return t.e(this.options, ftsTableInfo.options);
        }
        return false;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.columns.hashCode()) * 31) + this.options.hashCode();
    }

    @NotNull
    public String toString() {
        return "FtsTableInfo{name='" + this.name + "', columns=" + this.columns + ", options=" + this.options + "'}";
    }
}
