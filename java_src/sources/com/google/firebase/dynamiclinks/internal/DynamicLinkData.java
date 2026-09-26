package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes10.dex */
@SafeParcelable.Class(creator = "DynamicLinkDataCreator")
public class DynamicLinkData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DynamicLinkData> CREATOR = new a();

    @SafeParcelable.Field(getter = "getClickTimestamp", id = 4)
    private long clickTimestamp;

    @Nullable
    @SafeParcelable.Field(getter = "getDeepLink", id = 2)
    private String deepLink;

    @Nullable
    @SafeParcelable.Field(getter = "getDynamicLink", id = 1)
    private String dynamicLink;

    @Nullable
    @SafeParcelable.Field(getter = "getExtensionBundle", id = 5)
    private Bundle extensionBundle;

    @SafeParcelable.Field(getter = "getMinVersion", id = 3)
    private int minVersion;

    @Nullable
    @SafeParcelable.Field(getter = "getRedirectUrl", id = 6)
    private Uri redirectUrl;

    public int E0() {
        return this.minVersion;
    }

    @Nullable
    public Uri F0() {
        return this.redirectUrl;
    }

    public void G0(long j6) {
        this.clickTimestamp = j6;
    }

    public long m() {
        return this.clickTimestamp;
    }

    @Nullable
    public String p() {
        return this.deepLink;
    }

    @Nullable
    public String t0() {
        return this.dynamicLink;
    }

    public Bundle y0() {
        Bundle bundle = this.extensionBundle;
        return bundle == null ? new Bundle() : bundle;
    }

    @SafeParcelable.Constructor
    public DynamicLinkData(@Nullable @SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) int i10, @SafeParcelable.Param(id = 4) long j6, @Nullable @SafeParcelable.Param(id = 5) Bundle bundle, @Nullable @SafeParcelable.Param(id = 6) Uri uri) {
        this.dynamicLink = str;
        this.deepLink = str2;
        this.minVersion = i10;
        this.clickTimestamp = j6;
        this.extensionBundle = bundle;
        this.redirectUrl = uri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        a.c(this, parcel, i10);
    }
}
