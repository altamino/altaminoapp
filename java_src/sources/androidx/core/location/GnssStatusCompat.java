package androidx.core.location;

import android.annotation.SuppressLint;
import android.location.GnssStatus;
import android.location.GpsStatus;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
public abstract class GnssStatusCompat {

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_BEIDOU = 5;

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_GALILEO = 6;

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_GLONASS = 3;

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_GPS = 1;

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_IRNSS = 7;

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_QZSS = 4;

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_SBAS = 2;

    @SuppressLint({"InlinedApi"})
    public static final int CONSTELLATION_UNKNOWN = 0;

    public static abstract class Callback {
        public void a(@IntRange int i10) {
        }

        public void b(@NonNull GnssStatusCompat gnssStatusCompat) {
        }

        public void c() {
        }

        public void d() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ConstellationType {
    }

    @NonNull
    @RequiresApi
    public static GnssStatusCompat a(@NonNull GnssStatus gnssStatus) {
        return new GnssStatusWrapper(gnssStatus);
    }

    @NonNull
    @SuppressLint({"ReferencesDeprecated"})
    public static GnssStatusCompat b(@NonNull GpsStatus gpsStatus) {
        return new GpsStatusWrapper(gpsStatus);
    }

    GnssStatusCompat() {
    }
}
