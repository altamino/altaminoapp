package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public class zzdok extends IOException {
    private zzdpk zzhid;

    public zzdok(String str) {
        super(str);
        this.zzhid = null;
    }

    public final zzdok zzo(zzdpk zzdpkVar) {
        this.zzhid = zzdpkVar;
        return this;
    }

    static zzdok zzayd() {
        return new zzdok("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static zzdok zzaye() {
        return new zzdok("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzdok zzayf() {
        return new zzdok("CodedInputStream encountered a malformed varint.");
    }

    static zzdok zzayg() {
        return new zzdok("Protocol message contained an invalid tag (zero).");
    }

    static zzdok zzayh() {
        return new zzdok("Protocol message end-group tag did not match expected tag.");
    }

    static zzdol zzayi() {
        return new zzdol("Protocol message tag had invalid wire type.");
    }

    static zzdok zzayj() {
        return new zzdok("Failed to parse the message.");
    }

    static zzdok zzayk() {
        return new zzdok("Protocol message had invalid UTF-8.");
    }
}
