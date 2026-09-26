package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Date;

/* JADX INFO: loaded from: classes11.dex */
public class p {
    private static final String BACKOFF_END_TIME_IN_MILLIS_KEY = "backoff_end_time_in_millis";
    private static final String FETCH_TIMEOUT_IN_SECONDS_KEY = "fetch_timeout_in_seconds";
    private static final String LAST_FETCH_ETAG_KEY = "last_fetch_etag";
    private static final String LAST_FETCH_STATUS_KEY = "last_fetch_status";

    @VisibleForTesting
    public static final long LAST_FETCH_TIME_IN_MILLIS_NO_FETCH_YET = -1;
    private static final String LAST_SUCCESSFUL_FETCH_TIME_IN_MILLIS_KEY = "last_fetch_time_in_millis";
    private static final String LAST_TEMPLATE_VERSION = "last_template_version";
    private static final String MINIMUM_FETCH_INTERVAL_IN_SECONDS_KEY = "minimum_fetch_interval_in_seconds";
    private static final long NO_BACKOFF_TIME_IN_MILLIS = -1;

    @VisibleForTesting
    static final int NO_FAILED_FETCHES = 0;
    static final int NO_FAILED_REALTIME_STREAMS = 0;
    private static final String NUM_FAILED_FETCHES_KEY = "num_failed_fetches";
    private static final String NUM_FAILED_REALTIME_STREAMS_KEY = "num_failed_realtime_streams";
    private static final String REALTIME_BACKOFF_END_TIME_IN_MILLIS_KEY = "realtime_backoff_end_time_in_millis";
    private final SharedPreferences frcMetadata;
    static final Date LAST_FETCH_TIME_NO_FETCH_YET = new Date(-1);

    @VisibleForTesting
    static final Date NO_BACKOFF_TIME = new Date(-1);
    private final Object frcInfoLock = new Object();
    private final Object backoffMetadataLock = new Object();
    private final Object realtimeBackoffMetadataLock = new Object();

    void i() {
        k(0, NO_BACKOFF_TIME);
    }

    void j() {
        n(0, NO_BACKOFF_TIME);
    }

    static class a {
        private Date backoffEndTime;
        private int numFailedFetches;

        Date a() {
            return this.backoffEndTime;
        }

        int b() {
            return this.numFailedFetches;
        }

        a(int i10, Date date) {
            this.numFailedFetches = i10;
            this.backoffEndTime = date;
        }
    }

    @VisibleForTesting
    public static class b {
        private Date backoffEndTime;
        private int numFailedStreams;

        Date a() {
            return this.backoffEndTime;
        }

        int b() {
            return this.numFailedStreams;
        }

        @VisibleForTesting
        public b(int i10, Date date) {
            this.numFailedStreams = i10;
            this.backoffEndTime = date;
        }
    }

    a a() {
        a aVar;
        synchronized (this.backoffMetadataLock) {
            aVar = new a(this.frcMetadata.getInt(NUM_FAILED_FETCHES_KEY, 0), new Date(this.frcMetadata.getLong(BACKOFF_END_TIME_IN_MILLIS_KEY, -1L)));
        }
        return aVar;
    }

    public long b() {
        return this.frcMetadata.getLong(FETCH_TIMEOUT_IN_SECONDS_KEY, 60L);
    }

    public c5.k c() {
        v vVarA;
        synchronized (this.frcInfoLock) {
            long j6 = this.frcMetadata.getLong(LAST_SUCCESSFUL_FETCH_TIME_IN_MILLIS_KEY, -1L);
            int i10 = this.frcMetadata.getInt(LAST_FETCH_STATUS_KEY, 0);
            vVarA = v.b().c(i10).d(j6).b(new c5.m.b().d(this.frcMetadata.getLong(FETCH_TIMEOUT_IN_SECONDS_KEY, 60L)).e(this.frcMetadata.getLong(MINIMUM_FETCH_INTERVAL_IN_SECONDS_KEY, m.DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS)).c()).a();
        }
        return vVarA;
    }

    @Nullable
    String d() {
        return this.frcMetadata.getString(LAST_FETCH_ETAG_KEY, null);
    }

    Date e() {
        return new Date(this.frcMetadata.getLong(LAST_SUCCESSFUL_FETCH_TIME_IN_MILLIS_KEY, -1L));
    }

    long f() {
        return this.frcMetadata.getLong(LAST_TEMPLATE_VERSION, 0L);
    }

    public long g() {
        return this.frcMetadata.getLong(MINIMUM_FETCH_INTERVAL_IN_SECONDS_KEY, m.DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS);
    }

    @VisibleForTesting
    public b h() {
        b bVar;
        synchronized (this.realtimeBackoffMetadataLock) {
            bVar = new b(this.frcMetadata.getInt(NUM_FAILED_REALTIME_STREAMS_KEY, 0), new Date(this.frcMetadata.getLong(REALTIME_BACKOFF_END_TIME_IN_MILLIS_KEY, -1L)));
        }
        return bVar;
    }

    void k(int i10, Date date) {
        synchronized (this.backoffMetadataLock) {
            this.frcMetadata.edit().putInt(NUM_FAILED_FETCHES_KEY, i10).putLong(BACKOFF_END_TIME_IN_MILLIS_KEY, date.getTime()).apply();
        }
    }

    void l(String str) {
        synchronized (this.frcInfoLock) {
            this.frcMetadata.edit().putString(LAST_FETCH_ETAG_KEY, str).apply();
        }
    }

    void m(long j6) {
        synchronized (this.frcInfoLock) {
            this.frcMetadata.edit().putLong(LAST_TEMPLATE_VERSION, j6).apply();
        }
    }

    void n(int i10, Date date) {
        synchronized (this.realtimeBackoffMetadataLock) {
            this.frcMetadata.edit().putInt(NUM_FAILED_REALTIME_STREAMS_KEY, i10).putLong(REALTIME_BACKOFF_END_TIME_IN_MILLIS_KEY, date.getTime()).apply();
        }
    }

    void o() {
        synchronized (this.frcInfoLock) {
            this.frcMetadata.edit().putInt(LAST_FETCH_STATUS_KEY, 1).apply();
        }
    }

    void p(Date date) {
        synchronized (this.frcInfoLock) {
            this.frcMetadata.edit().putInt(LAST_FETCH_STATUS_KEY, -1).putLong(LAST_SUCCESSFUL_FETCH_TIME_IN_MILLIS_KEY, date.getTime()).apply();
        }
    }

    void q() {
        synchronized (this.frcInfoLock) {
            this.frcMetadata.edit().putInt(LAST_FETCH_STATUS_KEY, 2).apply();
        }
    }

    public p(SharedPreferences sharedPreferences) {
        this.frcMetadata = sharedPreferences;
    }
}
