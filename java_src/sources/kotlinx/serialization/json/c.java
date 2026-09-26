package kotlinx.serialization.json;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private boolean allowSpecialFloatingPointValues;
    private boolean allowStructuredMapKeys;

    @NotNull
    private String classDiscriminator;
    private boolean coerceInputValues;
    private boolean encodeDefaults;
    private boolean explicitNulls;
    private boolean ignoreUnknownKeys;
    private boolean isLenient;
    private boolean prettyPrint;

    @NotNull
    private String prettyPrintIndent;

    @NotNull
    private kotlinx.serialization.modules.c serializersModule;
    private boolean useAlternativeNames;
    private boolean useArrayPolymorphism;

    @NotNull
    public final kotlinx.serialization.modules.c b() {
        return this.serializersModule;
    }

    public final void c(boolean z6) {
        this.allowStructuredMapKeys = z6;
    }

    public final void d(boolean z6) {
        this.encodeDefaults = z6;
    }

    public final void e(boolean z6) {
        this.explicitNulls = z6;
    }

    public final void f(boolean z6) {
        this.ignoreUnknownKeys = z6;
    }

    public final void g(boolean z6) {
        this.isLenient = z6;
    }

    public c(@NotNull a json) {
        kotlin.jvm.internal.t.j(json, "json");
        this.encodeDefaults = json.e().e();
        this.explicitNulls = json.e().f();
        this.ignoreUnknownKeys = json.e().g();
        this.isLenient = json.e().l();
        this.allowStructuredMapKeys = json.e().b();
        this.prettyPrint = json.e().h();
        this.prettyPrintIndent = json.e().i();
        this.coerceInputValues = json.e().d();
        this.useArrayPolymorphism = json.e().k();
        this.classDiscriminator = json.e().c();
        this.allowSpecialFloatingPointValues = json.e().a();
        this.useAlternativeNames = json.e().j();
        this.serializersModule = json.a();
    }

    @NotNull
    public final e a() {
        if (this.useArrayPolymorphism && !kotlin.jvm.internal.t.e(this.classDiscriminator, "type")) {
            throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified".toString());
        }
        if (this.prettyPrint) {
            if (!kotlin.jvm.internal.t.e(this.prettyPrintIndent, "    ")) {
                String str = this.prettyPrintIndent;
                for (int i10 = 0; i10 < str.length(); i10++) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                        throw new IllegalArgumentException(("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had " + this.prettyPrintIndent).toString());
                    }
                }
            }
        } else if (!kotlin.jvm.internal.t.e(this.prettyPrintIndent, "    ")) {
            throw new IllegalArgumentException("Indent should not be specified when default printing mode is used".toString());
        }
        return new e(this.encodeDefaults, this.ignoreUnknownKeys, this.isLenient, this.allowStructuredMapKeys, this.prettyPrint, this.explicitNulls, this.prettyPrintIndent, this.coerceInputValues, this.useArrayPolymorphism, this.classDiscriminator, this.allowSpecialFloatingPointValues, this.useAlternativeNames);
    }
}
