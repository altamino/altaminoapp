package androidx.core.location;

import android.location.GnssStatus;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
@RestrictTo
class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    @RequiresApi
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static float a(GnssStatus gnssStatus, int i10) {
            return gnssStatus.getCarrierFrequencyHz(i10);
        }

        @DoNotInline
        static boolean b(GnssStatus gnssStatus, int i10) {
            return gnssStatus.hasCarrierFrequencyHz(i10);
        }
    }

    @RequiresApi
    static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static float a(GnssStatus gnssStatus, int i10) {
            return gnssStatus.getBasebandCn0DbHz(i10);
        }

        @DoNotInline
        static boolean b(GnssStatus gnssStatus, int i10) {
            return gnssStatus.hasBasebandCn0DbHz(i10);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GnssStatusWrapper) {
            return this.mWrapped.equals(((GnssStatusWrapper) obj).mWrapped);
        }
        return false;
    }

    public int hashCode() {
        return this.mWrapped.hashCode();
    }

    GnssStatusWrapper(Object obj) {
        this.mWrapped = b.a(Preconditions.i(b.a(obj)));
    }
}
