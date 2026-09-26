package androidx.window.core;

import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.k;
import kotlin.text.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public final class Version implements Comparable<Version> {

    @NotNull
    private static final Version CURRENT;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Version UNKNOWN = new Version(0, 0, 0, "");

    @NotNull
    private static final Version VERSION_0_1 = new Version(0, 1, 0, "");

    @NotNull
    private static final Version VERSION_1_0;

    @NotNull
    private static final String VERSION_PATTERN_STRING = "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?";

    @NotNull
    private final m bigInteger$delegate;

    @NotNull
    private final String description;
    private final int major;
    private final int minor;
    private final int patch;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        @Nullable
        public final Version b(@Nullable String str) {
            if (str == null || t.z(str)) {
                return null;
            }
            Matcher matcher = Pattern.compile(Version.VERSION_PATTERN_STRING).matcher(str);
            if (!matcher.matches()) {
                return null;
            }
            String strGroup = matcher.group(1);
            Integer numValueOf = strGroup == null ? null : Integer.valueOf(Integer.parseInt(strGroup));
            if (numValueOf == null) {
                return null;
            }
            int iIntValue = numValueOf.intValue();
            String strGroup2 = matcher.group(2);
            Integer numValueOf2 = strGroup2 == null ? null : Integer.valueOf(Integer.parseInt(strGroup2));
            if (numValueOf2 == null) {
                return null;
            }
            int iIntValue2 = numValueOf2.intValue();
            String strGroup3 = matcher.group(3);
            Integer numValueOf3 = strGroup3 == null ? null : Integer.valueOf(Integer.parseInt(strGroup3));
            if (numValueOf3 == null) {
                return null;
            }
            int iIntValue3 = numValueOf3.intValue();
            String description = matcher.group(4) != null ? matcher.group(4) : "";
            kotlin.jvm.internal.t.i(description, "description");
            return new Version(iIntValue, iIntValue2, iIntValue3, description, null);
        }

        private Companion() {
        }

        @NotNull
        public final Version a() {
            return Version.VERSION_0_1;
        }
    }

    public /* synthetic */ Version(int i10, int i11, int i12, String str, k kVar) {
        this(i10, i11, i12, str);
    }

    public final int d() {
        return this.major;
    }

    public final int e() {
        return this.minor;
    }

    public final int f() {
        return this.patch;
    }

    public int hashCode() {
        return ((((527 + this.major) * 31) + this.minor) * 31) + this.patch;
    }

    static {
        Version version = new Version(1, 0, 0, "");
        VERSION_1_0 = version;
        CURRENT = version;
    }

    private Version(int i10, int i11, int i12, String str) {
        this.major = i10;
        this.minor = i11;
        this.patch = i12;
        this.description = str;
        this.bigInteger$delegate = o.a(new Version$bigInteger$2(this));
    }

    private final BigInteger c() {
        Object value = this.bigInteger$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.major == version.major && this.minor == version.minor && this.patch == version.patch;
    }

    @NotNull
    public String toString() {
        return this.major + '.' + this.minor + '.' + this.patch + (t.z(this.description) ^ true ? kotlin.jvm.internal.t.s("-", this.description) : "");
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NotNull Version other) {
        kotlin.jvm.internal.t.j(other, "other");
        return c().compareTo(other.c());
    }
}
