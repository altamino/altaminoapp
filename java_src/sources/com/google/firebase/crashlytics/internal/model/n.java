package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
final class n extends f0.e.d.a.b {
    private final f0.a appExitInfo;
    private final List<f0.e.d.a.b.AbstractC0239a> binaries;
    private final f0.e.d.a.b.c exception;
    private final f0.e.d.a.b.AbstractC0243d signal;
    private final List<f0.e.d.a.b.AbstractC0245e> threads;

    static final class b extends f0.e.d.a.b.AbstractC0241b {
        private f0.a appExitInfo;
        private List<f0.e.d.a.b.AbstractC0239a> binaries;
        private f0.e.d.a.b.c exception;
        private f0.e.d.a.b.AbstractC0243d signal;
        private List<f0.e.d.a.b.AbstractC0245e> threads;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0241b
        public f0.e.d.a.b.AbstractC0241b b(f0.a aVar) {
            this.appExitInfo = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0241b
        public f0.e.d.a.b.AbstractC0241b d(f0.e.d.a.b.c cVar) {
            this.exception = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0241b
        public f0.e.d.a.b.AbstractC0241b f(List<f0.e.d.a.b.AbstractC0245e> list) {
            this.threads = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0241b
        public f0.e.d.a.b a() {
            String str = "";
            if (this.signal == null) {
                str = " signal";
            }
            if (this.binaries == null) {
                str = str + " binaries";
            }
            if (str.isEmpty()) {
                return new n(this.threads, this.exception, this.appExitInfo, this.signal, this.binaries);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0241b
        public f0.e.d.a.b.AbstractC0241b c(List<f0.e.d.a.b.AbstractC0239a> list) {
            if (list == null) {
                throw new NullPointerException("Null binaries");
            }
            this.binaries = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0241b
        public f0.e.d.a.b.AbstractC0241b e(f0.e.d.a.b.AbstractC0243d abstractC0243d) {
            if (abstractC0243d == null) {
                throw new NullPointerException("Null signal");
            }
            this.signal = abstractC0243d;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b
    @Nullable
    public f0.a b() {
        return this.appExitInfo;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b
    @NonNull
    public List<f0.e.d.a.b.AbstractC0239a> c() {
        return this.binaries;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b
    @Nullable
    public f0.e.d.a.b.c d() {
        return this.exception;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b
    @NonNull
    public f0.e.d.a.b.AbstractC0243d e() {
        return this.signal;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b)) {
            return false;
        }
        f0.e.d.a.b bVar = (f0.e.d.a.b) obj;
        List<f0.e.d.a.b.AbstractC0245e> list = this.threads;
        if (list != null ? list.equals(bVar.f()) : bVar.f() == null) {
            f0.e.d.a.b.c cVar = this.exception;
            if (cVar != null ? cVar.equals(bVar.d()) : bVar.d() == null) {
                f0.a aVar = this.appExitInfo;
                if (aVar != null ? aVar.equals(bVar.b()) : bVar.b() == null) {
                    if (this.signal.equals(bVar.e()) && this.binaries.equals(bVar.c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b
    @Nullable
    public List<f0.e.d.a.b.AbstractC0245e> f() {
        return this.threads;
    }

    private n(@Nullable List<f0.e.d.a.b.AbstractC0245e> list, @Nullable f0.e.d.a.b.c cVar, @Nullable f0.a aVar, f0.e.d.a.b.AbstractC0243d abstractC0243d, List<f0.e.d.a.b.AbstractC0239a> list2) {
        this.threads = list;
        this.exception = cVar;
        this.appExitInfo = aVar;
        this.signal = abstractC0243d;
        this.binaries = list2;
    }

    public int hashCode() {
        List<f0.e.d.a.b.AbstractC0245e> list = this.threads;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        f0.e.d.a.b.c cVar = this.exception;
        int iHashCode2 = (iHashCode ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        f0.a aVar = this.appExitInfo;
        return ((((iHashCode2 ^ (aVar != null ? aVar.hashCode() : 0)) * 1000003) ^ this.signal.hashCode()) * 1000003) ^ this.binaries.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.threads + ", exception=" + this.exception + ", appExitInfo=" + this.appExitInfo + ", signal=" + this.signal + ", binaries=" + this.binaries + "}";
    }
}
