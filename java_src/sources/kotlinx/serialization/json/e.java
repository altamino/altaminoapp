package kotlinx.serialization.json;

import org.apache.commons.compress.archivers.zip.UnixStat;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private final boolean allowSpecialFloatingPointValues;
    private final boolean allowStructuredMapKeys;

    @NotNull
    private final String classDiscriminator;
    private final boolean coerceInputValues;
    private final boolean encodeDefaults;
    private final boolean explicitNulls;
    private final boolean ignoreUnknownKeys;
    private final boolean isLenient;
    private final boolean prettyPrint;

    @NotNull
    private final String prettyPrintIndent;
    private final boolean useAlternativeNames;
    private final boolean useArrayPolymorphism;

    public e() {
        this(false, false, false, false, false, false, null, false, false, null, false, false, UnixStat.PERM_MASK, null);
    }

    public final boolean a() {
        return this.allowSpecialFloatingPointValues;
    }

    public final boolean b() {
        return this.allowStructuredMapKeys;
    }

    @NotNull
    public final String c() {
        return this.classDiscriminator;
    }

    public final boolean d() {
        return this.coerceInputValues;
    }

    public final boolean e() {
        return this.encodeDefaults;
    }

    public final boolean f() {
        return this.explicitNulls;
    }

    public final boolean g() {
        return this.ignoreUnknownKeys;
    }

    public final boolean h() {
        return this.prettyPrint;
    }

    @NotNull
    public final String i() {
        return this.prettyPrintIndent;
    }

    public final boolean j() {
        return this.useAlternativeNames;
    }

    public final boolean k() {
        return this.useArrayPolymorphism;
    }

    public final boolean l() {
        return this.isLenient;
    }

    public e(boolean z6, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, @NotNull String prettyPrintIndent, boolean z15, boolean z16, @NotNull String classDiscriminator, boolean z17, boolean z18) {
        kotlin.jvm.internal.t.j(prettyPrintIndent, "prettyPrintIndent");
        kotlin.jvm.internal.t.j(classDiscriminator, "classDiscriminator");
        this.encodeDefaults = z6;
        this.ignoreUnknownKeys = z10;
        this.isLenient = z11;
        this.allowStructuredMapKeys = z12;
        this.prettyPrint = z13;
        this.explicitNulls = z14;
        this.prettyPrintIndent = prettyPrintIndent;
        this.coerceInputValues = z15;
        this.useArrayPolymorphism = z16;
        this.classDiscriminator = classDiscriminator;
        this.allowSpecialFloatingPointValues = z17;
        this.useAlternativeNames = z18;
    }

    @NotNull
    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.encodeDefaults + ", ignoreUnknownKeys=" + this.ignoreUnknownKeys + ", isLenient=" + this.isLenient + ", allowStructuredMapKeys=" + this.allowStructuredMapKeys + ", prettyPrint=" + this.prettyPrint + ", explicitNulls=" + this.explicitNulls + ", prettyPrintIndent='" + this.prettyPrintIndent + "', coerceInputValues=" + this.coerceInputValues + ", useArrayPolymorphism=" + this.useArrayPolymorphism + ", classDiscriminator='" + this.classDiscriminator + "', allowSpecialFloatingPointValues=" + this.allowSpecialFloatingPointValues + ')';
    }

    public /* synthetic */ e(boolean z6, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, String str, boolean z15, boolean z16, String str2, boolean z17, boolean z18, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? false : z11, (i10 & 8) != 0 ? false : z12, (i10 & 16) != 0 ? false : z13, (i10 & 32) != 0 ? true : z14, (i10 & 64) != 0 ? "    " : str, (i10 & 128) != 0 ? false : z15, (i10 & 256) != 0 ? false : z16, (i10 & 512) != 0 ? "type" : str2, (i10 & 1024) == 0 ? z17 : false, (i10 & 2048) == 0 ? z18 : true);
    }
}
