package androidx.media3.exoplayer.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new Parcelable.Creator<Requirements>() { // from class: androidx.media3.exoplayer.scheduler.Requirements.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Requirements createFromParcel(Parcel parcel) {
            return new Requirements(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Requirements[] newArray(int i10) {
            return new Requirements[i10];
        }
    };
    public static final int DEVICE_CHARGING = 8;
    public static final int DEVICE_IDLE = 4;
    public static final int DEVICE_STORAGE_NOT_LOW = 16;
    public static final int NETWORK = 1;
    public static final int NETWORK_UNMETERED = 2;
    private final int requirements;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface RequirementFlags {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Requirements.class == obj.getClass() && this.requirements == ((Requirements) obj).requirements;
    }

    public int g() {
        return this.requirements;
    }

    public boolean h() {
        return (this.requirements & 8) != 0;
    }

    public int hashCode() {
        return this.requirements;
    }

    public boolean l() {
        return (this.requirements & 4) != 0;
    }

    public boolean n() {
        return (this.requirements & 1) != 0;
    }

    public boolean p() {
        return (this.requirements & 16) != 0;
    }

    public boolean s() {
        return (this.requirements & 2) != 0;
    }

    private boolean i(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return false;
        }
        int intExtra = intentRegisterReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        return intExtra == 2 || intExtra == 5;
    }

    private static boolean m(ConnectivityManager connectivityManager) {
        if (Util.SDK_INT < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            return networkCapabilities != null && networkCapabilities.hasCapability(16);
        } catch (SecurityException unused) {
            return true;
        }
    }

    private boolean o(Context context) {
        return context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null;
    }

    public Requirements a(int i10) {
        int i11 = this.requirements;
        int i12 = i10 & i11;
        return i12 == i11 ? this : new Requirements(i12);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.requirements);
    }

    public Requirements(int i10) {
        this.requirements = (i10 & 2) != 0 ? i10 | 1 : i10;
    }

    private int c(Context context) {
        if (!n()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) Assertions.e(context.getSystemService("connectivity"));
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && m(connectivityManager)) {
            if (!s() || !connectivityManager.isActiveNetworkMetered()) {
                return 0;
            }
            return 2;
        }
        return this.requirements & 3;
    }

    private boolean k(Context context) {
        PowerManager powerManager = (PowerManager) Assertions.e(context.getSystemService("power"));
        int i10 = Util.SDK_INT;
        if (i10 >= 23) {
            return powerManager.isDeviceIdleMode();
        }
        if (i10 < 20 ? powerManager.isScreenOn() : powerManager.isInteractive()) {
            return false;
        }
        return true;
    }

    public int e(Context context) {
        int iC = c(context);
        if (h() && !i(context)) {
            iC |= 8;
        }
        if (l() && !k(context)) {
            iC |= 4;
        }
        if (p() && !o(context)) {
            return iC | 16;
        }
        return iC;
    }
}
