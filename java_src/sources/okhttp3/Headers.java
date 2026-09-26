package okhttp3;

import a8.c;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.collections.a0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes5.dex */
public final class Headers implements Iterable<u<? extends String, ? extends String>>, f8.a {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final String[] namesAndValues;

    public static final class Builder {

        @NotNull
        private final List<String> namesAndValues = new ArrayList(20);

        @NotNull
        public final Builder add(@NotNull String line) {
            t.j(line, "line");
            int iB0 = kotlin.text.u.b0(line, kotlinx.serialization.json.internal.b.COLON, 0, false, 6, null);
            if (iB0 == -1) {
                throw new IllegalArgumentException(t.s("Unexpected header: ", line).toString());
            }
            String strSubstring = line.substring(0, iB0);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String string = kotlin.text.u.b1(strSubstring).toString();
            String strSubstring2 = line.substring(iB0 + 1);
            t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            add(string, strSubstring2);
            return this;
        }

        @NotNull
        public final Builder addLenient$okhttp(@NotNull String line) {
            t.j(line, "line");
            int iB0 = kotlin.text.u.b0(line, kotlinx.serialization.json.internal.b.COLON, 1, false, 4, null);
            if (iB0 != -1) {
                String strSubstring = line.substring(0, iB0);
                t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strSubstring2 = line.substring(iB0 + 1);
                t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(strSubstring, strSubstring2);
            } else if (line.charAt(0) == ':') {
                String strSubstring3 = line.substring(1);
                t.i(strSubstring3, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", strSubstring3);
            } else {
                addLenient$okhttp("", line);
            }
            return this;
        }

        @NotNull
        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        @NotNull
        public final Builder set(@NotNull String name, @NotNull Date value) {
            t.j(name, "name");
            t.j(value, "value");
            set(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @NotNull
        public final Builder addAll(@NotNull Headers headers) {
            t.j(headers, "headers");
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                addLenient$okhttp(headers.name(i10), headers.value(i10));
            }
            return this;
        }

        @NotNull
        public final Builder addUnsafeNonAscii(@NotNull String name, @NotNull String value) {
            t.j(name, "name");
            t.j(value, "value");
            Headers.Companion.checkName(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @NotNull
        public final Headers build() {
            Object[] array = this.namesAndValues.toArray(new String[0]);
            if (array != null) {
                return new Headers((String[]) array, null);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Nullable
        public final String get(@NotNull String name) {
            t.j(name, "name");
            int size = this.namesAndValues.size() - 2;
            int iC = c.c(size, 0, -2);
            if (iC > size) {
                return null;
            }
            while (true) {
                int i10 = size - 2;
                if (kotlin.text.t.w(name, this.namesAndValues.get(size), true)) {
                    return this.namesAndValues.get(size + 1);
                }
                if (size == iC) {
                    return null;
                }
                size = i10;
            }
        }

        @NotNull
        public final Builder removeAll(@NotNull String name) {
            t.j(name, "name");
            int i10 = 0;
            while (i10 < getNamesAndValues$okhttp().size()) {
                if (kotlin.text.t.w(name, getNamesAndValues$okhttp().get(i10), true)) {
                    getNamesAndValues$okhttp().remove(i10);
                    getNamesAndValues$okhttp().remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder set(@NotNull String name, @NotNull Instant value) {
            t.j(name, "name");
            t.j(value, "value");
            return set(name, new Date(value.toEpochMilli()));
        }

        @NotNull
        public final Builder set(@NotNull String name, @NotNull String value) {
            t.j(name, "name");
            t.j(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            removeAll(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull String value) {
            t.j(name, "name");
            t.j(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            addLenient$okhttp(name, value);
            return this;
        }

        @NotNull
        public final Builder addLenient$okhttp(@NotNull String name, @NotNull String value) {
            t.j(name, "name");
            t.j(value, "value");
            getNamesAndValues$okhttp().add(name);
            getNamesAndValues$okhttp().add(kotlin.text.u.b1(value).toString());
            return this;
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull Date value) {
            t.j(name, "name");
            t.j(value, "value");
            add(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder add(@NotNull String name, @NotNull Instant value) {
            t.j(name, "name");
            t.j(value, "value");
            add(name, new Date(value.toEpochMilli()));
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String get(String[] strArr, String str) {
            int length = strArr.length - 2;
            int iC = c.c(length, 0, -2);
            if (iC > length) {
                return null;
            }
            while (true) {
                int i10 = length - 2;
                if (kotlin.text.t.w(str, strArr[length], true)) {
                    return strArr[length + 1];
                }
                if (length == iC) {
                    return null;
                }
                length = i10;
            }
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m1693deprecated_of(@NotNull String... namesAndValues) {
            t.j(namesAndValues, "namesAndValues");
            return of((String[]) Arrays.copyOf(namesAndValues, namesAndValues.length));
        }

        @NotNull
        public final Headers of(@NotNull String... namesAndValues) {
            t.j(namesAndValues, "namesAndValues");
            if (namesAndValues.length % 2 != 0) {
                throw new IllegalArgumentException("Expected alternating header names and values".toString());
            }
            String[] strArr = (String[]) namesAndValues.clone();
            int length = strArr.length;
            int i10 = 0;
            int i11 = 0;
            while (i11 < length) {
                int i12 = i11 + 1;
                String str = strArr[i11];
                if (str == null) {
                    throw new IllegalArgumentException("Headers cannot be null".toString());
                }
                strArr[i11] = kotlin.text.u.b1(str).toString();
                i11 = i12;
            }
            int iC = c.c(0, strArr.length - 1, 2);
            if (iC >= 0) {
                while (true) {
                    int i13 = i10 + 2;
                    String str2 = strArr[i10];
                    String str3 = strArr[i10 + 1];
                    checkName(str2);
                    checkValue(str3, str2);
                    if (i10 == iC) {
                        break;
                    }
                    i10 = i13;
                }
            }
            return new Headers(strArr, null);
        }

        private Companion() {
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m1692deprecated_of(@NotNull Map<String, String> headers) {
            t.j(headers, "headers");
            return of(headers);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (str.length() > 0) {
                int length = str.length();
                int i10 = 0;
                while (i10 < length) {
                    int i11 = i10 + 1;
                    char cCharAt = str.charAt(i10);
                    if ('!' <= cCharAt && cCharAt < 127) {
                        i10 = i11;
                    } else {
                        throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i10), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty".toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            String strS;
            int length = str.length();
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                    String str3 = Util.format("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i10), str2);
                    if (Util.isSensitiveHeader(str2)) {
                        strS = "";
                    } else {
                        strS = t.s(": ", str);
                    }
                    throw new IllegalArgumentException(t.s(str3, strS).toString());
                }
                i10 = i11;
            }
        }

        @NotNull
        public final Headers of(@NotNull Map<String, String> map) {
            t.j(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                String string = kotlin.text.u.b1(key).toString();
                String string2 = kotlin.text.u.b1(value).toString();
                checkName(string);
                checkValue(string2, string);
                strArr[i10] = string;
                strArr[i10 + 1] = string2;
                i10 += 2;
            }
            return new Headers(strArr, null);
        }
    }

    public /* synthetic */ Headers(String[] strArr, k kVar) {
        this(strArr);
    }

    @NotNull
    public static final Headers of(@NotNull Map<String, String> map) {
        return Companion.of(map);
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    @NotNull
    public static final Headers of(@NotNull String... strArr) {
        return Companion.of(strArr);
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        int length2 = strArr.length;
        for (int i10 = 0; i10 < length2; i10++) {
            length += (long) this.namesAndValues[i10].length();
        }
        return length;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    @Nullable
    public final String get(@NotNull String name) {
        t.j(name, "name");
        return Companion.get(this.namesAndValues, name);
    }

    @Nullable
    public final Date getDate(@NotNull String name) {
        t.j(name, "name");
        String str = get(name);
        if (str == null) {
            return null;
        }
        return DatesKt.toHttpDateOrNull(str);
    }

    @IgnoreJRERequirement
    @Nullable
    public final Instant getInstant(@NotNull String name) {
        t.j(name, "name");
        Date date = getDate(name);
        if (date == null) {
            return null;
        }
        return date.toInstant();
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @NotNull
    public final String name(int i10) {
        return this.namesAndValues[i10 * 2];
    }

    @NotNull
    public final Set<String> names() {
        TreeSet treeSet = new TreeSet(kotlin.text.t.y(u0.INSTANCE));
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            treeSet.add(name(i10));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        t.i(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    @NotNull
    public final Builder newBuilder() {
        Builder builder = new Builder();
        a0.E(builder.getNamesAndValues$okhttp(), this.namesAndValues);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    @NotNull
    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(kotlin.text.t.y(u0.INSTANCE));
        int size = size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            String strName = name(i10);
            Locale US = Locale.US;
            t.i(US, "US");
            String lowerCase = strName.toLowerCase(US);
            t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i10));
            i10 = i11;
        }
        return treeMap;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            String strName = name(i10);
            String strValue = value(i10);
            sb.append(strName);
            sb.append(": ");
            if (Util.isSensitiveHeader(strName)) {
                strValue = "██";
            }
            sb.append(strValue);
            sb.append("\n");
            i10 = i11;
        }
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @NotNull
    public final String value(int i10) {
        return this.namesAndValues[(i10 * 2) + 1];
    }

    @NotNull
    public final List<String> values(@NotNull String name) {
        t.j(name, "name");
        int size = size();
        ArrayList arrayList = null;
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            if (kotlin.text.t.w(name, name(i10), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i10));
            }
            i10 = i11;
        }
        if (arrayList == null) {
            return v.m();
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        t.i(listUnmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return listUnmodifiableList;
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m1691deprecated_size() {
        return size();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<u<? extends String, ? extends String>> iterator() {
        int size = size();
        u[] uVarArr = new u[size];
        for (int i10 = 0; i10 < size; i10++) {
            uVarArr[i10] = w7.a0.a(name(i10), value(i10));
        }
        return kotlin.jvm.internal.c.a(uVarArr);
    }
}
