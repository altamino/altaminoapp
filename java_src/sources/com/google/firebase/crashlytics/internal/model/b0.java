package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes10.dex */
final class b0 extends g0 {
    private final g0.a appData;
    private final g0.b deviceData;
    private final g0.c osData;

    @Override // com.google.firebase.crashlytics.internal.model.g0
    public g0.a a() {
        return this.appData;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0
    public g0.b c() {
        return this.deviceData;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0
    public g0.c d() {
        return this.osData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.appData.equals(g0Var.a()) && this.osData.equals(g0Var.d()) && this.deviceData.equals(g0Var.c());
    }

    public int hashCode() {
        return ((((this.appData.hashCode() ^ 1000003) * 1000003) ^ this.osData.hashCode()) * 1000003) ^ this.deviceData.hashCode();
    }

    public String toString() {
        return "StaticSessionData{appData=" + this.appData + ", osData=" + this.osData + ", deviceData=" + this.deviceData + "}";
    }

    b0(g0.a aVar, g0.c cVar, g0.b bVar) {
        if (aVar != null) {
            this.appData = aVar;
            if (cVar != null) {
                this.osData = cVar;
                if (bVar != null) {
                    this.deviceData = bVar;
                    return;
                }
                throw new NullPointerException("Null deviceData");
            }
            throw new NullPointerException("Null osData");
        }
        throw new NullPointerException("Null appData");
    }
}
