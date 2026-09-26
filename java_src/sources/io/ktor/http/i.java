package io.ktor.http;

import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private final String content;

    @NotNull
    private final List<h> parameters;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public i(@NotNull String content, @NotNull List<h> parameters) {
        kotlin.jvm.internal.t.j(content, "content");
        kotlin.jvm.internal.t.j(parameters, "parameters");
        this.content = content;
        this.parameters = parameters;
    }

    @NotNull
    protected final String a() {
        return this.content;
    }

    @NotNull
    public final List<h> b() {
        return this.parameters;
    }

    public /* synthetic */ i(String str, List list, int i10, kotlin.jvm.internal.k kVar) {
        this(str, (i10 & 2) != 0 ? kotlin.collections.v.m() : list);
    }

    @Nullable
    public final String c(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        int iO = kotlin.collections.v.o(this.parameters);
        if (iO < 0) {
            return null;
        }
        int i10 = 0;
        while (true) {
            h hVar = this.parameters.get(i10);
            if (kotlin.text.t.w(hVar.a(), name, true)) {
                return hVar.b();
            }
            if (i10 == iO) {
                return null;
            }
            i10++;
        }
    }

    @NotNull
    public String toString() {
        if (this.parameters.isEmpty()) {
            return this.content;
        }
        int length = this.content.length();
        int i10 = 0;
        int length2 = 0;
        for (h hVar : this.parameters) {
            length2 += hVar.a().length() + hVar.b().length() + 3;
        }
        StringBuilder sb = new StringBuilder(length + length2);
        sb.append(this.content);
        int iO = kotlin.collections.v.o(this.parameters);
        if (iO >= 0) {
            while (true) {
                h hVar2 = this.parameters.get(i10);
                sb.append("; ");
                sb.append(hVar2.a());
                sb.append("=");
                String strB = hVar2.b();
                if (j.c(strB)) {
                    sb.append(j.d(strB));
                } else {
                    sb.append(strB);
                }
                if (i10 == iO) {
                    break;
                }
                i10++;
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "{\n            val size =…   }.toString()\n        }");
        return string;
    }
}
