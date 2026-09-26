package io.ktor.http;

import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends i {

    @NotNull
    private final String contentSubtype;

    @NotNull
    private final String contentType;

    @NotNull
    public static final b Companion = new b(null);

    @NotNull
    private static final c Any = new c("*", "*", null, 4, null);

    public static final class a {

        @NotNull
        private static final c Any;

        @NotNull
        private static final c Atom;

        @NotNull
        private static final c Cbor;

        @NotNull
        private static final c Docx;

        @NotNull
        private static final c FormUrlEncoded;

        @NotNull
        private static final c GZip;

        @NotNull
        private static final c HalJson;

        @NotNull
        public static final a INSTANCE = new a();

        @NotNull
        private static final c JavaScript;

        @NotNull
        private static final c Json;

        @NotNull
        private static final c OctetStream;

        @NotNull
        private static final c Pdf;

        @NotNull
        private static final c Pptx;

        @NotNull
        private static final c ProblemJson;

        @NotNull
        private static final c ProblemXml;

        @NotNull
        private static final c ProtoBuf;

        @NotNull
        private static final c Rss;

        @NotNull
        private static final c Wasm;

        @NotNull
        private static final c Xlsx;

        @NotNull
        private static final c Xml;

        @NotNull
        private static final c Xml_Dtd;

        @NotNull
        private static final c Zip;

        @NotNull
        public final c a() {
            return OctetStream;
        }

        @NotNull
        public final c b() {
            return ProtoBuf;
        }

        static {
            List list = null;
            int i10 = 4;
            kotlin.jvm.internal.k kVar = null;
            Any = new c("application", "*", list, i10, kVar);
            List list2 = null;
            int i11 = 4;
            kotlin.jvm.internal.k kVar2 = null;
            Atom = new c("application", "atom+xml", list2, i11, kVar2);
            Cbor = new c("application", "cbor", list, i10, kVar);
            Json = new c("application", "json", list2, i11, kVar2);
            HalJson = new c("application", "hal+json", list, i10, kVar);
            JavaScript = new c("application", "javascript", list2, i11, kVar2);
            OctetStream = new c("application", "octet-stream", list, i10, kVar);
            Rss = new c("application", "rss+xml", list2, i11, kVar2);
            Xml = new c("application", "xml", list, i10, kVar);
            Xml_Dtd = new c("application", "xml-dtd", list2, i11, kVar2);
            Zip = new c("application", ArchiveStreamFactory.ZIP, list, i10, kVar);
            GZip = new c("application", "gzip", list2, i11, kVar2);
            FormUrlEncoded = new c("application", "x-www-form-urlencoded", list, i10, kVar);
            Pdf = new c("application", "pdf", list2, i11, kVar2);
            Xlsx = new c("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet", list, i10, kVar);
            Docx = new c("application", "vnd.openxmlformats-officedocument.wordprocessingml.document", list2, i11, kVar2);
            Pptx = new c("application", "vnd.openxmlformats-officedocument.presentationml.presentation", list, i10, kVar);
            ProtoBuf = new c("application", "protobuf", list2, i11, kVar2);
            Wasm = new c("application", "wasm", list, i10, kVar);
            ProblemJson = new c("application", "problem+json", list2, i11, kVar2);
            ProblemXml = new c("application", "problem+xml", list, i10, kVar);
        }

        private a() {
        }
    }

    public static final class b {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        private b() {
        }

        @NotNull
        public final c b(@NotNull String value) throws io.ktor.http.a {
            kotlin.jvm.internal.t.j(value, "value");
            if (kotlin.text.t.z(value)) {
                return a();
            }
            i.a aVar = i.Companion;
            g gVar = (g) kotlin.collections.d0.v0(n.b(value));
            String strB = gVar.b();
            List<h> listA = gVar.a();
            int iB0 = kotlin.text.u.b0(strB, '/', 0, false, 6, null);
            if (iB0 == -1) {
                if (kotlin.jvm.internal.t.e(kotlin.text.u.b1(strB).toString(), "*")) {
                    return c.Companion.a();
                }
                throw new io.ktor.http.a(value);
            }
            String strSubstring = strB.substring(0, iB0);
            kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String string = kotlin.text.u.b1(strSubstring).toString();
            if (string.length() == 0) {
                throw new io.ktor.http.a(value);
            }
            String strSubstring2 = strB.substring(iB0 + 1);
            kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            String string2 = kotlin.text.u.b1(strSubstring2).toString();
            if (kotlin.text.u.O(string, ' ', false, 2, null) || kotlin.text.u.O(string2, ' ', false, 2, null)) {
                throw new io.ktor.http.a(value);
            }
            if (string2.length() == 0 || kotlin.text.u.O(string2, '/', false, 2, null)) {
                throw new io.ktor.http.a(value);
            }
            return new c(string, string2, listA);
        }

        @NotNull
        public final c a() {
            return c.Any;
        }
    }

    /* JADX INFO: renamed from: io.ktor.http.c$c, reason: collision with other inner class name */
    public static final class C0410c {

        @NotNull
        private static final c Any;

        @NotNull
        private static final c CSS;

        @NotNull
        private static final c CSV;

        @NotNull
        private static final c EventStream;

        @NotNull
        private static final c Html;

        @NotNull
        public static final C0410c INSTANCE = new C0410c();

        @NotNull
        private static final c JavaScript;

        @NotNull
        private static final c Plain;

        @NotNull
        private static final c VCard;

        @NotNull
        private static final c Xml;

        @NotNull
        public final c a() {
            return Plain;
        }

        static {
            List list = null;
            int i10 = 4;
            kotlin.jvm.internal.k kVar = null;
            Any = new c("text", "*", list, i10, kVar);
            List list2 = null;
            int i11 = 4;
            kotlin.jvm.internal.k kVar2 = null;
            Plain = new c("text", "plain", list2, i11, kVar2);
            CSS = new c("text", "css", list, i10, kVar);
            CSV = new c("text", "csv", list2, i11, kVar2);
            Html = new c("text", "html", list, i10, kVar);
            JavaScript = new c("text", "javascript", list2, i11, kVar2);
            VCard = new c("text", "vcard", list, i10, kVar);
            Xml = new c("text", "xml", list2, i11, kVar2);
            EventStream = new c("text", "event-stream", list, i10, kVar);
        }

        private C0410c() {
        }
    }

    private c(String str, String str2, String str3, List<h> list) {
        super(str3, list);
        this.contentType = str;
        this.contentSubtype = str2;
    }

    @NotNull
    public final String e() {
        return this.contentType;
    }

    public /* synthetic */ c(String str, String str2, List list, int i10, kotlin.jvm.internal.k kVar) {
        this(str, str2, (i10 & 4) != 0 ? kotlin.collections.v.m() : list);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (kotlin.text.t.w(this.contentType, cVar.contentType, true) && kotlin.text.t.w(this.contentSubtype, cVar.contentSubtype, true) && kotlin.jvm.internal.t.e(b(), cVar.b())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final c g(@NotNull String name, @NotNull String value) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(value, "value");
        return f(name, value) ? this : new c(this.contentType, this.contentSubtype, a(), kotlin.collections.d0.E0(b(), new h(name, value)));
    }

    public int hashCode() {
        String str = this.contentType;
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        kotlin.jvm.internal.t.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        int iHashCode = lowerCase.hashCode();
        String lowerCase2 = this.contentSubtype.toLowerCase(locale);
        kotlin.jvm.internal.t.i(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return iHashCode + (iHashCode * 31) + lowerCase2.hashCode() + (b().hashCode() * 31);
    }

    private final boolean f(String str, String str2) {
        int size = b().size();
        if (size == 0) {
            return false;
        }
        if (size != 1) {
            List<h> listB = b();
            if ((listB instanceof Collection) && listB.isEmpty()) {
                return false;
            }
            for (h hVar : listB) {
                if (!kotlin.text.t.w(hVar.a(), str, true) || !kotlin.text.t.w(hVar.b(), str2, true)) {
                }
            }
            return false;
        }
        h hVar2 = b().get(0);
        if (!kotlin.text.t.w(hVar2.a(), str, true) || !kotlin.text.t.w(hVar2.b(), str2, true)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(@NotNull String contentType, @NotNull String contentSubtype, @NotNull List<h> parameters) {
        this(contentType, contentSubtype, contentType + '/' + contentSubtype, parameters);
        kotlin.jvm.internal.t.j(contentType, "contentType");
        kotlin.jvm.internal.t.j(contentSubtype, "contentSubtype");
        kotlin.jvm.internal.t.j(parameters, "parameters");
    }
}
