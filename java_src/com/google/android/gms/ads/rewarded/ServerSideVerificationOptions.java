package com.google.android.gms.ads.rewarded;

/* loaded from: classes.dex */
public class ServerSideVerificationOptions {
    private final String zzdqs;
    private final String zzdqt;

    private ServerSideVerificationOptions(Builder builder) {
        this.zzdqs = builder.zzdqs;
        this.zzdqt = builder.zzdqt;
    }

    public static final class Builder {
        private String zzdqs = "";
        private String zzdqt = "";

        public final Builder setUserId(String str) {
            this.zzdqs = str;
            return this;
        }

        public final Builder setCustomData(String str) {
            this.zzdqt = str;
            return this;
        }

        public final ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }
    }

    public String getUserId() {
        return this.zzdqs;
    }

    public String getCustomData() {
        return this.zzdqt;
    }
}
