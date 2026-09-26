package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "ShortDynamicLinkImplCreator")
public final class ShortDynamicLinkImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ShortDynamicLinkImpl> CREATOR = new i();

    @Nullable
    @SafeParcelable.Field(getter = "getPreviewLink", id = 2)
    private final Uri previewLink;

    @Nullable
    @SafeParcelable.Field(getter = "getShortLink", id = 1)
    private final Uri shortLink;

    @SafeParcelable.Field(getter = "getWarnings", id = 3)
    private final List<WarningImpl> warnings;

    @Nullable
    public Uri m() {
        return this.previewLink;
    }

    @Nullable
    public Uri p() {
        return this.shortLink;
    }

    public List<WarningImpl> t0() {
        return this.warnings;
    }

    @SafeParcelable.Class(creator = "WarningImplCreator")
    public static class WarningImpl extends AbstractSafeParcelable {
        public static final Parcelable.Creator<WarningImpl> CREATOR = new j();

        @SafeParcelable.Field(getter = "getMessage", id = 2)
        @SafeParcelable.Reserved({1})
        private final String message;

        public String m() {
            return this.message;
        }

        @SafeParcelable.Constructor
        public WarningImpl(@SafeParcelable.Param(id = 2) String str) {
            this.message = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            j.c(this, parcel, i10);
        }
    }

    @SafeParcelable.Constructor
    public ShortDynamicLinkImpl(@Nullable @SafeParcelable.Param(id = 1) Uri uri, @Nullable @SafeParcelable.Param(id = 2) Uri uri2, @Nullable @SafeParcelable.Param(id = 3) List<WarningImpl> list) {
        this.shortLink = uri;
        this.previewLink = uri2;
        this.warnings = list == null ? new ArrayList<>() : list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        i.c(this, parcel, i10);
    }
}
