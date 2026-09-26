package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class c extends com.google.android.datatransport.cct.internal.a {
    private final String applicationBuild;
    private final String country;
    private final String device;
    private final String fingerprint;
    private final String hardware;
    private final String locale;
    private final String manufacturer;
    private final String mccMnc;
    private final String model;
    private final String osBuild;
    private final String product;
    private final Integer sdkVersion;

    static final class b extends com.google.android.datatransport.cct.internal.a.AbstractC0158a {
        private String applicationBuild;
        private String country;
        private String device;
        private String fingerprint;
        private String hardware;
        private String locale;
        private String manufacturer;
        private String mccMnc;
        private String model;
        private String osBuild;
        private String product;
        private Integer sdkVersion;

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a b(@Nullable String str) {
            this.applicationBuild = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a c(@Nullable String str) {
            this.country = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a d(@Nullable String str) {
            this.device = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a e(@Nullable String str) {
            this.fingerprint = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a f(@Nullable String str) {
            this.hardware = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a g(@Nullable String str) {
            this.locale = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a h(@Nullable String str) {
            this.manufacturer = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a i(@Nullable String str) {
            this.mccMnc = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a j(@Nullable String str) {
            this.model = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a k(@Nullable String str) {
            this.osBuild = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a l(@Nullable String str) {
            this.product = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a.AbstractC0158a m(@Nullable Integer num) {
            this.sdkVersion = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.a.AbstractC0158a
        public com.google.android.datatransport.cct.internal.a a() {
            return new c(this.sdkVersion, this.model, this.hardware, this.device, this.product, this.osBuild, this.manufacturer, this.fingerprint, this.locale, this.country, this.mccMnc, this.applicationBuild);
        }

        b() {
        }
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String b() {
        return this.applicationBuild;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String c() {
        return this.country;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String d() {
        return this.device;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String e() {
        return this.fingerprint;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.google.android.datatransport.cct.internal.a)) {
            return false;
        }
        com.google.android.datatransport.cct.internal.a aVar = (com.google.android.datatransport.cct.internal.a) obj;
        Integer num = this.sdkVersion;
        if (num != null ? num.equals(aVar.m()) : aVar.m() == null) {
            String str = this.model;
            if (str != null ? str.equals(aVar.j()) : aVar.j() == null) {
                String str2 = this.hardware;
                if (str2 != null ? str2.equals(aVar.f()) : aVar.f() == null) {
                    String str3 = this.device;
                    if (str3 != null ? str3.equals(aVar.d()) : aVar.d() == null) {
                        String str4 = this.product;
                        if (str4 != null ? str4.equals(aVar.l()) : aVar.l() == null) {
                            String str5 = this.osBuild;
                            if (str5 != null ? str5.equals(aVar.k()) : aVar.k() == null) {
                                String str6 = this.manufacturer;
                                if (str6 != null ? str6.equals(aVar.h()) : aVar.h() == null) {
                                    String str7 = this.fingerprint;
                                    if (str7 != null ? str7.equals(aVar.e()) : aVar.e() == null) {
                                        String str8 = this.locale;
                                        if (str8 != null ? str8.equals(aVar.g()) : aVar.g() == null) {
                                            String str9 = this.country;
                                            if (str9 != null ? str9.equals(aVar.c()) : aVar.c() == null) {
                                                String str10 = this.mccMnc;
                                                if (str10 != null ? str10.equals(aVar.i()) : aVar.i() == null) {
                                                    String str11 = this.applicationBuild;
                                                    if (str11 == null) {
                                                        if (aVar.b() == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(aVar.b())) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String f() {
        return this.hardware;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String g() {
        return this.locale;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String h() {
        return this.manufacturer;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String i() {
        return this.mccMnc;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String j() {
        return this.model;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String k() {
        return this.osBuild;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public String l() {
        return this.product;
    }

    @Override // com.google.android.datatransport.cct.internal.a
    @Nullable
    public Integer m() {
        return this.sdkVersion;
    }

    private c(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11) {
        this.sdkVersion = num;
        this.model = str;
        this.hardware = str2;
        this.device = str3;
        this.product = str4;
        this.osBuild = str5;
        this.manufacturer = str6;
        this.fingerprint = str7;
        this.locale = str8;
        this.country = str9;
        this.mccMnc = str10;
        this.applicationBuild = str11;
    }

    public int hashCode() {
        Integer num = this.sdkVersion;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.model;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.hardware;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.device;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.product;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.osBuild;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.manufacturer;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.fingerprint;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.locale;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.country;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.mccMnc;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.applicationBuild;
        return iHashCode11 ^ (str11 != null ? str11.hashCode() : 0);
    }

    public String toString() {
        return "AndroidClientInfo{sdkVersion=" + this.sdkVersion + ", model=" + this.model + ", hardware=" + this.hardware + ", device=" + this.device + ", product=" + this.product + ", osBuild=" + this.osBuild + ", manufacturer=" + this.manufacturer + ", fingerprint=" + this.fingerprint + ", locale=" + this.locale + ", country=" + this.country + ", mccMnc=" + this.mccMnc + ", applicationBuild=" + this.applicationBuild + "}";
    }
}
