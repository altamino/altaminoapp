package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class m extends f0.e.d.a {
    private final List<f0.e.d.a.c> appProcessDetails;
    private final Boolean background;
    private final f0.e.d.a.c currentProcessDetails;
    private final List<f0.c> customAttributes;
    private final f0.e.d.a.b execution;
    private final List<f0.c> internalKeys;
    private final int uiOrientation;

    static final class b extends f0.e.d.a.AbstractC0238a {
        private List<f0.e.d.a.c> appProcessDetails;
        private Boolean background;
        private f0.e.d.a.c currentProcessDetails;
        private List<f0.c> customAttributes;
        private f0.e.d.a.b execution;
        private List<f0.c> internalKeys;
        private Integer uiOrientation;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a.AbstractC0238a b(@Nullable List<f0.e.d.a.c> list) {
            this.appProcessDetails = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a.AbstractC0238a c(@Nullable Boolean bool) {
            this.background = bool;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a.AbstractC0238a d(@Nullable f0.e.d.a.c cVar) {
            this.currentProcessDetails = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a.AbstractC0238a e(List<f0.c> list) {
            this.customAttributes = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a.AbstractC0238a g(List<f0.c> list) {
            this.internalKeys = list;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a a() {
            String str = "";
            if (this.execution == null) {
                str = " execution";
            }
            if (this.uiOrientation == null) {
                str = str + " uiOrientation";
            }
            if (str.isEmpty()) {
                return new m(this.execution, this.customAttributes, this.internalKeys, this.background, this.currentProcessDetails, this.appProcessDetails, this.uiOrientation.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a.AbstractC0238a f(f0.e.d.a.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null execution");
            }
            this.execution = bVar;
            return this;
        }

        private b(f0.e.d.a aVar) {
            this.execution = aVar.f();
            this.customAttributes = aVar.e();
            this.internalKeys = aVar.g();
            this.background = aVar.c();
            this.currentProcessDetails = aVar.d();
            this.appProcessDetails = aVar.b();
            this.uiOrientation = Integer.valueOf(aVar.h());
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.AbstractC0238a
        public f0.e.d.a.AbstractC0238a h(int i10) {
            this.uiOrientation = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    @Nullable
    public List<f0.e.d.a.c> b() {
        return this.appProcessDetails;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    @Nullable
    public Boolean c() {
        return this.background;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    @Nullable
    public f0.e.d.a.c d() {
        return this.currentProcessDetails;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    @Nullable
    public List<f0.c> e() {
        return this.customAttributes;
    }

    public boolean equals(Object obj) {
        List<f0.c> list;
        List<f0.c> list2;
        Boolean bool;
        f0.e.d.a.c cVar;
        List<f0.e.d.a.c> list3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a)) {
            return false;
        }
        f0.e.d.a aVar = (f0.e.d.a) obj;
        return this.execution.equals(aVar.f()) && ((list = this.customAttributes) != null ? list.equals(aVar.e()) : aVar.e() == null) && ((list2 = this.internalKeys) != null ? list2.equals(aVar.g()) : aVar.g() == null) && ((bool = this.background) != null ? bool.equals(aVar.c()) : aVar.c() == null) && ((cVar = this.currentProcessDetails) != null ? cVar.equals(aVar.d()) : aVar.d() == null) && ((list3 = this.appProcessDetails) != null ? list3.equals(aVar.b()) : aVar.b() == null) && this.uiOrientation == aVar.h();
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    @NonNull
    public f0.e.d.a.b f() {
        return this.execution;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    @Nullable
    public List<f0.c> g() {
        return this.internalKeys;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    public int h() {
        return this.uiOrientation;
    }

    private m(f0.e.d.a.b bVar, @Nullable List<f0.c> list, @Nullable List<f0.c> list2, @Nullable Boolean bool, @Nullable f0.e.d.a.c cVar, @Nullable List<f0.e.d.a.c> list3, int i10) {
        this.execution = bVar;
        this.customAttributes = list;
        this.internalKeys = list2;
        this.background = bool;
        this.currentProcessDetails = cVar;
        this.appProcessDetails = list3;
        this.uiOrientation = i10;
    }

    public int hashCode() {
        int iHashCode = (this.execution.hashCode() ^ 1000003) * 1000003;
        List<f0.c> list = this.customAttributes;
        int iHashCode2 = (iHashCode ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List<f0.c> list2 = this.internalKeys;
        int iHashCode3 = (iHashCode2 ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        Boolean bool = this.background;
        int iHashCode4 = (iHashCode3 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        f0.e.d.a.c cVar = this.currentProcessDetails;
        int iHashCode5 = (iHashCode4 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List<f0.e.d.a.c> list3 = this.appProcessDetails;
        return ((iHashCode5 ^ (list3 != null ? list3.hashCode() : 0)) * 1000003) ^ this.uiOrientation;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a
    public f0.e.d.a.AbstractC0238a i() {
        return new b(this);
    }

    public String toString() {
        return "Application{execution=" + this.execution + ", customAttributes=" + this.customAttributes + ", internalKeys=" + this.internalKeys + ", background=" + this.background + ", currentProcessDetails=" + this.currentProcessDetails + ", appProcessDetails=" + this.appProcessDetails + ", uiOrientation=" + this.uiOrientation + "}";
    }
}
