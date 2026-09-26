package io.ktor.http;

import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class g {

    @NotNull
    private final List<h> params;
    private final double quality;

    @NotNull
    private final String value;

    public g(@NotNull String value, @NotNull List<h> params) {
        Double d;
        Object next;
        String strB;
        Double dJ;
        kotlin.jvm.internal.t.j(value, "value");
        kotlin.jvm.internal.t.j(params, "params");
        this.value = value;
        this.params = params;
        Iterator<T> it = params.iterator();
        do {
            d = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!kotlin.jvm.internal.t.e(((h) next).a(), "q"));
        h hVar = (h) next;
        double dDoubleValue = 1.0d;
        if (hVar != null && (strB = hVar.b()) != null && (dJ = kotlin.text.r.j(strB)) != null) {
            double dDoubleValue2 = dJ.doubleValue();
            if (com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE <= dDoubleValue2 && dDoubleValue2 <= 1.0d) {
                d = dJ;
            }
            if (d != null) {
                dDoubleValue = d.doubleValue();
            }
        }
        this.quality = dDoubleValue;
    }

    @NotNull
    public final List<h> a() {
        return this.params;
    }

    @NotNull
    public final String b() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return kotlin.jvm.internal.t.e(this.value, gVar.value) && kotlin.jvm.internal.t.e(this.params, gVar.params);
    }

    public int hashCode() {
        return (this.value.hashCode() * 31) + this.params.hashCode();
    }

    @NotNull
    public String toString() {
        return "HeaderValue(value=" + this.value + ", params=" + this.params + ')';
    }

    public /* synthetic */ g(String str, List list, int i10, kotlin.jvm.internal.k kVar) {
        this(str, (i10 & 2) != 0 ? kotlin.collections.v.m() : list);
    }
}
