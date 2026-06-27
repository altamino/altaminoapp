package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface zzno {
    long getLength();

    long getPosition();

    int read(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    void readFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    boolean zza(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException;

    int zzaq(int i) throws InterruptedException, IOException;

    void zzar(int i) throws InterruptedException, IOException;

    void zzc(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    void zzig();

    void zzr(int i) throws InterruptedException, IOException;
}
