package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes.dex */
@AutoValue
abstract class e {
    private static final int LOAD_BATCH_SIZE = 200;
    private static final int LOCK_TIME_OUT_MS = 10000;
    private static final long MAX_DB_STORAGE_SIZE_IN_BYTES = 10485760;
    private static final long DURATION_ONE_WEEK_MS = 604800000;
    private static final int MAX_BLOB_BYTE_SIZE_PER_ROW = 81920;
    static final e DEFAULT = a().f(MAX_DB_STORAGE_SIZE_IN_BYTES).d(200).b(10000).c(DURATION_ONE_WEEK_MS).e(MAX_BLOB_BYTE_SIZE_PER_ROW).a();

    abstract int b();

    abstract long c();

    abstract int d();

    abstract int e();

    abstract long f();

    @AutoValue.Builder
    static abstract class a {
        abstract e a();

        abstract a b(int i10);

        abstract a c(long j6);

        abstract a d(int i10);

        abstract a e(int i10);

        abstract a f(long j6);

        a() {
        }
    }

    static a a() {
        return new com.google.android.datatransport.runtime.scheduling.persistence.a.b();
    }

    e() {
    }
}
