package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzaga;
import com.google.android.gms.internal.ads.zzagb;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzyf;
import com.google.android.gms.internal.ads.zzzs;
import com.google.android.gms.internal.ads.zzzt;

@zzard
@SafeParcelable.Class(creator = "PublisherAdViewOptionsCreator")
/* loaded from: classes.dex */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzc();

    @SafeParcelable.Field(getter = "getManualImpressionsEnabled", id = 1)
    private final boolean zzbqn;

    @SafeParcelable.Field(getter = "getAppEventListenerBinder", id = 2, type = "android.os.IBinder")
    private final zzzs zzbqo;
    private AppEventListener zzbqp;

    @SafeParcelable.Field(getter = "getDelayedBannerAdListenerBinder", id = 3)
    private final IBinder zzbqq;

    private PublisherAdViewOptions(Builder builder) {
        this.zzbqn = builder.zzbqn;
        this.zzbqp = builder.zzbqp;
        AppEventListener appEventListener = this.zzbqp;
        this.zzbqo = appEventListener != null ? new zzyf(appEventListener) : null;
        this.zzbqq = null;
    }

    public static final class Builder {
        private boolean zzbqn = false;
        private AppEventListener zzbqp;

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzbqn = z;
            return this;
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.zzbqp = appEventListener;
            return this;
        }

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this);
        }
    }

    @SafeParcelable.Constructor
    PublisherAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) IBinder iBinder2) {
        this.zzbqn = z;
        this.zzbqo = iBinder != null ? zzzt.zzd(iBinder) : null;
        this.zzbqq = iBinder2;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbqp;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbqn;
    }

    public final zzzs zzkt() {
        return this.zzbqo;
    }

    public final zzaga zzku() {
        return zzagb.zzu(this.zzbqq);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getManualImpressionsEnabled());
        zzzs zzzsVar = this.zzbqo;
        SafeParcelWriter.writeIBinder(parcel, 2, zzzsVar == null ? null : zzzsVar.asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.zzbqq, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
