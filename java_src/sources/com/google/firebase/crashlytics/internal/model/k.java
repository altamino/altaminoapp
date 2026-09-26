package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
final class k extends f0.e.c {
    private final int arch;
    private final int cores;
    private final long diskSpace;
    private final String manufacturer;
    private final String model;
    private final String modelClass;
    private final long ram;
    private final boolean simulator;
    private final int state;

    static final class b extends f0.e.c.a {
        private Integer arch;
        private Integer cores;
        private Long diskSpace;
        private String manufacturer;
        private String model;
        private String modelClass;
        private Long ram;
        private Boolean simulator;
        private Integer state;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c a() {
            String str = "";
            if (this.arch == null) {
                str = " arch";
            }
            if (this.model == null) {
                str = str + " model";
            }
            if (this.cores == null) {
                str = str + " cores";
            }
            if (this.ram == null) {
                str = str + " ram";
            }
            if (this.diskSpace == null) {
                str = str + " diskSpace";
            }
            if (this.simulator == null) {
                str = str + " simulator";
            }
            if (this.state == null) {
                str = str + " state";
            }
            if (this.manufacturer == null) {
                str = str + " manufacturer";
            }
            if (this.modelClass == null) {
                str = str + " modelClass";
            }
            if (str.isEmpty()) {
                return new k(this.arch.intValue(), this.model, this.cores.intValue(), this.ram.longValue(), this.diskSpace.longValue(), this.simulator.booleanValue(), this.state.intValue(), this.manufacturer, this.modelClass);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null manufacturer");
            }
            this.manufacturer = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null model");
            }
            this.model = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a g(String str) {
            if (str == null) {
                throw new NullPointerException("Null modelClass");
            }
            this.modelClass = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a b(int i10) {
            this.arch = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a c(int i10) {
            this.cores = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a d(long j6) {
            this.diskSpace = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a h(long j6) {
            this.ram = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a i(boolean z6) {
            this.simulator = Boolean.valueOf(z6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.c.a
        public f0.e.c.a j(int i10) {
            this.state = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    @NonNull
    public int b() {
        return this.arch;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    public int c() {
        return this.cores;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    public long d() {
        return this.diskSpace;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    @NonNull
    public String e() {
        return this.manufacturer;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.c)) {
            return false;
        }
        f0.e.c cVar = (f0.e.c) obj;
        return this.arch == cVar.b() && this.model.equals(cVar.f()) && this.cores == cVar.c() && this.ram == cVar.h() && this.diskSpace == cVar.d() && this.simulator == cVar.j() && this.state == cVar.i() && this.manufacturer.equals(cVar.e()) && this.modelClass.equals(cVar.g());
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    @NonNull
    public String f() {
        return this.model;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    @NonNull
    public String g() {
        return this.modelClass;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    public long h() {
        return this.ram;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    public int i() {
        return this.state;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.c
    public boolean j() {
        return this.simulator;
    }

    private k(int i10, String str, int i11, long j6, long j10, boolean z6, int i12, String str2, String str3) {
        this.arch = i10;
        this.model = str;
        this.cores = i11;
        this.ram = j6;
        this.diskSpace = j10;
        this.simulator = z6;
        this.state = i12;
        this.manufacturer = str2;
        this.modelClass = str3;
    }

    public int hashCode() {
        int iHashCode = (((((this.arch ^ 1000003) * 1000003) ^ this.model.hashCode()) * 1000003) ^ this.cores) * 1000003;
        long j6 = this.ram;
        int i10 = (iHashCode ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        long j10 = this.diskSpace;
        return ((((((((i10 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ (this.simulator ? 1231 : 1237)) * 1000003) ^ this.state) * 1000003) ^ this.manufacturer.hashCode()) * 1000003) ^ this.modelClass.hashCode();
    }

    public String toString() {
        return "Device{arch=" + this.arch + ", model=" + this.model + ", cores=" + this.cores + ", ram=" + this.ram + ", diskSpace=" + this.diskSpace + ", simulator=" + this.simulator + ", state=" + this.state + ", manufacturer=" + this.manufacturer + ", modelClass=" + this.modelClass + "}";
    }
}
