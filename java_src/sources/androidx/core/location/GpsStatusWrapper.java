package androidx.core.location;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
class GpsStatusWrapper extends GnssStatusCompat {
    private static final int BEIDOU_PRN_COUNT = 35;
    private static final int BEIDOU_PRN_OFFSET = 200;
    private static final int GLONASS_PRN_COUNT = 24;
    private static final int GLONASS_PRN_OFFSET = 64;
    private static final int GPS_PRN_COUNT = 32;
    private static final int GPS_PRN_OFFSET = 0;
    private static final int QZSS_SVID_MAX = 200;
    private static final int QZSS_SVID_MIN = 193;
    private static final int SBAS_PRN_MAX = 64;
    private static final int SBAS_PRN_MIN = 33;
    private static final int SBAS_PRN_OFFSET = -87;

    @GuardedBy
    private Iterator<GpsSatellite> mCachedIterator;

    @GuardedBy
    private int mCachedIteratorPosition;

    @GuardedBy
    private GpsSatellite mCachedSatellite;

    @GuardedBy
    private int mCachedSatelliteCount;
    private final GpsStatus mWrapped;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GpsStatusWrapper) {
            return this.mWrapped.equals(((GpsStatusWrapper) obj).mWrapped);
        }
        return false;
    }

    public int hashCode() {
        return this.mWrapped.hashCode();
    }

    GpsStatusWrapper(GpsStatus gpsStatus) {
        GpsStatus gpsStatus2 = (GpsStatus) Preconditions.i(gpsStatus);
        this.mWrapped = gpsStatus2;
        this.mCachedSatelliteCount = -1;
        this.mCachedIterator = gpsStatus2.getSatellites().iterator();
        this.mCachedIteratorPosition = -1;
        this.mCachedSatellite = null;
    }
}
