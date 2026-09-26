package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes10.dex */
final class d0 extends g0.b {
    private final int arch;
    private final int availableProcessors;
    private final long diskSpace;
    private final boolean isEmulator;
    private final String manufacturer;
    private final String model;
    private final String modelClass;
    private final int state;
    private final long totalRam;

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public int a() {
        return this.arch;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public int b() {
        return this.availableProcessors;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public long d() {
        return this.diskSpace;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public boolean e() {
        return this.isEmulator;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.b)) {
            return false;
        }
        g0.b bVar = (g0.b) obj;
        return this.arch == bVar.a() && this.model.equals(bVar.g()) && this.availableProcessors == bVar.b() && this.totalRam == bVar.j() && this.diskSpace == bVar.d() && this.isEmulator == bVar.e() && this.state == bVar.i() && this.manufacturer.equals(bVar.f()) && this.modelClass.equals(bVar.h());
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public String f() {
        return this.manufacturer;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public String g() {
        return this.model;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public String h() {
        return this.modelClass;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public int i() {
        return this.state;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.b
    public long j() {
        return this.totalRam;
    }

    public int hashCode() {
        int iHashCode = (((((this.arch ^ 1000003) * 1000003) ^ this.model.hashCode()) * 1000003) ^ this.availableProcessors) * 1000003;
        long j6 = this.totalRam;
        int i10 = (iHashCode ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        long j10 = this.diskSpace;
        return ((((((((i10 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ (this.isEmulator ? 1231 : 1237)) * 1000003) ^ this.state) * 1000003) ^ this.manufacturer.hashCode()) * 1000003) ^ this.modelClass.hashCode();
    }

    public String toString() {
        return "DeviceData{arch=" + this.arch + ", model=" + this.model + ", availableProcessors=" + this.availableProcessors + ", totalRam=" + this.totalRam + ", diskSpace=" + this.diskSpace + ", isEmulator=" + this.isEmulator + ", state=" + this.state + ", manufacturer=" + this.manufacturer + ", modelClass=" + this.modelClass + "}";
    }

    d0(int i10, String str, int i11, long j6, long j10, boolean z6, int i12, String str2, String str3) {
        this.arch = i10;
        if (str != null) {
            this.model = str;
            this.availableProcessors = i11;
            this.totalRam = j6;
            this.diskSpace = j10;
            this.isEmulator = z6;
            this.state = i12;
            if (str2 != null) {
                this.manufacturer = str2;
                if (str3 != null) {
                    this.modelClass = str3;
                    return;
                }
                throw new NullPointerException("Null modelClass");
            }
            throw new NullPointerException("Null manufacturer");
        }
        throw new NullPointerException("Null model");
    }
}
