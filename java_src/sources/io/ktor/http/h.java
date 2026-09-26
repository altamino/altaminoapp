package io.ktor.http;

import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class h {
    private final boolean escapeValue;

    @NotNull
    private final String name;

    @NotNull
    private final String value;

    public h(@NotNull String name, @NotNull String value, boolean z6) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(value, "value");
        this.name = name;
        this.value = value;
        this.escapeValue = z6;
    }

    @NotNull
    public final String a() {
        return this.name;
    }

    @NotNull
    public final String b() {
        return this.value;
    }

    @NotNull
    public String toString() {
        return "HeaderValueParam(name=" + this.name + ", value=" + this.value + ", escapeValue=" + this.escapeValue + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(@NotNull String name, @NotNull String value) {
        this(name, value, false);
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(value, "value");
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (kotlin.text.t.w(hVar.name, this.name, true) && kotlin.text.t.w(hVar.value, this.value, true)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.name;
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        kotlin.jvm.internal.t.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        int iHashCode = lowerCase.hashCode();
        String lowerCase2 = this.value.toLowerCase(locale);
        kotlin.jvm.internal.t.i(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return iHashCode + (iHashCode * 31) + lowerCase2.hashCode();
    }
}
