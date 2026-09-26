package c5;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public class m {
    private final long fetchTimeoutInSeconds;
    private final long minimumFetchInterval;

    public static class b {
        private long fetchTimeoutInSeconds = 60;
        private long minimumFetchInterval = com.google.firebase.remoteconfig.internal.m.DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS;

        @NonNull
        public m c() {
            return new m(this);
        }

        @NonNull
        public b d(long j6) throws IllegalArgumentException {
            if (j6 < 0) {
                throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j6)));
            }
            this.fetchTimeoutInSeconds = j6;
            return this;
        }

        @NonNull
        public b e(long j6) {
            if (j6 >= 0) {
                this.minimumFetchInterval = j6;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j6 + " is an invalid argument");
        }
    }

    private m(b bVar) {
        this.fetchTimeoutInSeconds = bVar.fetchTimeoutInSeconds;
        this.minimumFetchInterval = bVar.minimumFetchInterval;
    }
}
