package com.google.firebase.perf.util;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes8.dex */
public abstract class k {
    private static final /* synthetic */ k[] $VALUES;
    public static final k BYTES;
    public static final k GIGABYTES;
    public static final k KILOBYTES;
    public static final k MEGABYTES;
    public static final k TERABYTES;
    long numBytes;

    final enum a extends k {
        a(String str, int i10, long j6) {
            super(str, i10, j6, null);
        }
    }

    /* synthetic */ k(String str, int i10, long j6, a aVar) {
        this(str, i10, j6);
    }

    static {
        a aVar = new a("TERABYTES", 0, 1099511627776L);
        TERABYTES = aVar;
        k kVar = new k("GIGABYTES", 1, 1073741824L) { // from class: com.google.firebase.perf.util.k.b
            {
                a aVar2 = null;
            }
        };
        GIGABYTES = kVar;
        k kVar2 = new k("MEGABYTES", 2, 1048576L) { // from class: com.google.firebase.perf.util.k.c
            {
                a aVar2 = null;
            }
        };
        MEGABYTES = kVar2;
        k kVar3 = new k("KILOBYTES", 3, 1024L) { // from class: com.google.firebase.perf.util.k.d
            {
                a aVar2 = null;
            }
        };
        KILOBYTES = kVar3;
        k kVar4 = new k("BYTES", 4, 1L) { // from class: com.google.firebase.perf.util.k.e
            {
                a aVar2 = null;
            }
        };
        BYTES = kVar4;
        $VALUES = new k[]{aVar, kVar, kVar2, kVar3, kVar4};
    }

    private k(String str, int i10, long j6) {
        super(str, i10);
        this.numBytes = j6;
    }

    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    public static k[] values() {
        return (k[]) $VALUES.clone();
    }

    public long a(long j6) {
        return (j6 * this.numBytes) / KILOBYTES.numBytes;
    }
}
