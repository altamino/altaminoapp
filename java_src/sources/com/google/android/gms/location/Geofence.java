package com.google.android.gms.location;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes4.dex */
@VisibleForTesting
public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    @VisibleForTesting
    public static final class Builder {
        private double zze;
        private double zzf;
        private float zzg;
        private String zza = null;

        @TransitionTypes
        private int zzb = 0;
        private long zzc = Long.MIN_VALUE;
        private short zzd = -1;
        private int zzh = 0;
        private int zzi = -1;

        @NonNull
        public Builder setLoiteringDelay(int i10) {
            this.zzi = i10;
            return this;
        }

        @NonNull
        public Builder setNotificationResponsiveness(@IntRange int i10) {
            this.zzh = i10;
            return this;
        }

        @NonNull
        public Builder setTransitionTypes(@TransitionTypes int i10) {
            this.zzb = i10;
            return this;
        }

        @NonNull
        public Geofence build() {
            String str = this.zza;
            if (str == null) {
                throw new IllegalArgumentException("Request ID not set.");
            }
            int i10 = this.zzb;
            if (i10 == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            }
            if ((i10 & 4) != 0 && this.zzi < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            }
            long j6 = this.zzc;
            if (j6 == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            }
            if (this.zzd == -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            }
            int i11 = this.zzh;
            if (i11 >= 0) {
                return new com.google.android.gms.internal.location.zzbe(str, i10, (short) 1, this.zze, this.zzf, this.zzg, j6, i11, this.zzi);
            }
            throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
        }

        @NonNull
        public Builder setExpirationDuration(long j6) {
            if (j6 < 0) {
                this.zzc = -1L;
            } else {
                this.zzc = DefaultClock.getInstance().elapsedRealtime() + j6;
            }
            return this;
        }

        @NonNull
        public Builder setRequestId(@NonNull String str) {
            this.zza = (String) Preconditions.checkNotNull(str, "Request ID can't be set to null");
            return this;
        }

        @NonNull
        public Builder setCircularRegion(@FloatRange double d, @FloatRange double d2, @FloatRange float f) {
            boolean z6;
            boolean z10;
            boolean z11 = false;
            if (d >= -90.0d && d <= 90.0d) {
                z6 = true;
            } else {
                z6 = false;
            }
            StringBuilder sb = new StringBuilder(42);
            sb.append("Invalid latitude: ");
            sb.append(d);
            Preconditions.checkArgument(z6, sb.toString());
            if (d2 >= -180.0d && d2 <= 180.0d) {
                z10 = true;
            } else {
                z10 = false;
            }
            StringBuilder sb2 = new StringBuilder(43);
            sb2.append("Invalid longitude: ");
            sb2.append(d2);
            Preconditions.checkArgument(z10, sb2.toString());
            if (f > 0.0f) {
                z11 = true;
            }
            StringBuilder sb3 = new StringBuilder(31);
            sb3.append("Invalid radius: ");
            sb3.append(f);
            Preconditions.checkArgument(z11, sb3.toString());
            this.zzd = (short) 1;
            this.zze = d;
            this.zzf = d2;
            this.zzg = f;
            return this;
        }
    }

    public @interface GeofenceTransition {
    }

    public @interface TransitionTypes {
    }

    @NonNull
    String getRequestId();
}
