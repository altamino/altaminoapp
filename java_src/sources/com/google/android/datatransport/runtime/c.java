package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes.dex */
final class c extends o {
    private final f2.b encoding;
    private final f2.c<?> event;
    private final f2.e<?, byte[]> transformer;
    private final p transportContext;
    private final String transportName;

    static final class b extends o.a {
        private f2.b encoding;
        private f2.c<?> event;
        private f2.e<?, byte[]> transformer;
        private p transportContext;
        private String transportName;

        @Override // com.google.android.datatransport.runtime.o.a
        public o a() {
            String str = "";
            if (this.transportContext == null) {
                str = " transportContext";
            }
            if (this.transportName == null) {
                str = str + " transportName";
            }
            if (this.event == null) {
                str = str + " event";
            }
            if (this.transformer == null) {
                str = str + " transformer";
            }
            if (this.encoding == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new c(this.transportContext, this.transportName, this.event, this.transformer, this.encoding);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.o.a
        o.a b(f2.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null encoding");
            }
            this.encoding = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        o.a c(f2.c<?> cVar) {
            if (cVar == null) {
                throw new NullPointerException("Null event");
            }
            this.event = cVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        o.a d(f2.e<?, byte[]> eVar) {
            if (eVar == null) {
                throw new NullPointerException("Null transformer");
            }
            this.transformer = eVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a e(p pVar) {
            if (pVar == null) {
                throw new NullPointerException("Null transportContext");
            }
            this.transportContext = pVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.transportName = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.android.datatransport.runtime.o
    public f2.b b() {
        return this.encoding;
    }

    @Override // com.google.android.datatransport.runtime.o
    f2.c<?> c() {
        return this.event;
    }

    @Override // com.google.android.datatransport.runtime.o
    f2.e<?, byte[]> e() {
        return this.transformer;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.transportContext.equals(oVar.f()) && this.transportName.equals(oVar.g()) && this.event.equals(oVar.c()) && this.transformer.equals(oVar.e()) && this.encoding.equals(oVar.b());
    }

    @Override // com.google.android.datatransport.runtime.o
    public p f() {
        return this.transportContext;
    }

    @Override // com.google.android.datatransport.runtime.o
    public String g() {
        return this.transportName;
    }

    private c(p pVar, String str, f2.c<?> cVar, f2.e<?, byte[]> eVar, f2.b bVar) {
        this.transportContext = pVar;
        this.transportName = str;
        this.event = cVar;
        this.transformer = eVar;
        this.encoding = bVar;
    }

    public int hashCode() {
        return ((((((((this.transportContext.hashCode() ^ 1000003) * 1000003) ^ this.transportName.hashCode()) * 1000003) ^ this.event.hashCode()) * 1000003) ^ this.transformer.hashCode()) * 1000003) ^ this.encoding.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.transportContext + ", transportName=" + this.transportName + ", event=" + this.event + ", transformer=" + this.transformer + ", encoding=" + this.encoding + "}";
    }
}
