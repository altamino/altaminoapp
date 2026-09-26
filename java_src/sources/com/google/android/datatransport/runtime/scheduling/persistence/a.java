package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes.dex */
final class a extends e {
    private final int criticalSectionEnterTimeoutMs;
    private final long eventCleanUpAge;
    private final int loadBatchSize;
    private final int maxBlobByteSizePerRow;
    private final long maxStorageSizeInBytes;

    static final class b extends e.a {
        private Integer criticalSectionEnterTimeoutMs;
        private Long eventCleanUpAge;
        private Integer loadBatchSize;
        private Integer maxBlobByteSizePerRow;
        private Long maxStorageSizeInBytes;

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.e.a
        e a() {
            String str = "";
            if (this.maxStorageSizeInBytes == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.loadBatchSize == null) {
                str = str + " loadBatchSize";
            }
            if (this.criticalSectionEnterTimeoutMs == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.eventCleanUpAge == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.maxBlobByteSizePerRow == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.maxStorageSizeInBytes.longValue(), this.loadBatchSize.intValue(), this.criticalSectionEnterTimeoutMs.intValue(), this.eventCleanUpAge.longValue(), this.maxBlobByteSizePerRow.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        b() {
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.e.a
        e.a b(int i10) {
            this.criticalSectionEnterTimeoutMs = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.e.a
        e.a c(long j6) {
            this.eventCleanUpAge = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.e.a
        e.a d(int i10) {
            this.loadBatchSize = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.e.a
        e.a e(int i10) {
            this.maxBlobByteSizePerRow = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.e.a
        e.a f(long j6) {
            this.maxStorageSizeInBytes = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.e
    int b() {
        return this.criticalSectionEnterTimeoutMs;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.e
    long c() {
        return this.eventCleanUpAge;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.e
    int d() {
        return this.loadBatchSize;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.e
    int e() {
        return this.maxBlobByteSizePerRow;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.maxStorageSizeInBytes == eVar.f() && this.loadBatchSize == eVar.d() && this.criticalSectionEnterTimeoutMs == eVar.b() && this.eventCleanUpAge == eVar.c() && this.maxBlobByteSizePerRow == eVar.e();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.e
    long f() {
        return this.maxStorageSizeInBytes;
    }

    public int hashCode() {
        long j6 = this.maxStorageSizeInBytes;
        int i10 = (((((((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003) ^ this.loadBatchSize) * 1000003) ^ this.criticalSectionEnterTimeoutMs) * 1000003;
        long j10 = this.eventCleanUpAge;
        return ((i10 ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.maxBlobByteSizePerRow;
    }

    private a(long j6, int i10, int i11, long j10, int i12) {
        this.maxStorageSizeInBytes = j6;
        this.loadBatchSize = i10;
        this.criticalSectionEnterTimeoutMs = i11;
        this.eventCleanUpAge = j10;
        this.maxBlobByteSizePerRow = i12;
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.maxStorageSizeInBytes + ", loadBatchSize=" + this.loadBatchSize + ", criticalSectionEnterTimeoutMs=" + this.criticalSectionEnterTimeoutMs + ", eventCleanUpAge=" + this.eventCleanUpAge + ", maxBlobByteSizePerRow=" + this.maxBlobByteSizePerRow + "}";
    }
}
