package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

@zzard
/* loaded from: classes2.dex */
public final class zzvf extends zzva {
    private MessageDigest zzbwc;

    @Override // com.google.android.gms.internal.ads.zzva
    public final byte[] zzbl(String str) throws UnsupportedEncodingException {
        byte[] bArrArray;
        String[] strArrSplit = str.split(" ");
        int length = 4;
        if (strArrSplit.length == 1) {
            int iZzbn = zzve.zzbn(strArrSplit[0]);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(iZzbn);
            bArrArray = byteBufferAllocate.array();
        } else if (strArrSplit.length < 5) {
            bArrArray = new byte[strArrSplit.length << 1];
            for (int i = 0; i < strArrSplit.length; i++) {
                int iZzbn2 = zzve.zzbn(strArrSplit[i]);
                int i2 = (iZzbn2 >> 16) ^ (65535 & iZzbn2);
                byte[] bArr = {(byte) i2, (byte) (i2 >> 8)};
                int i3 = i << 1;
                bArrArray[i3] = bArr[0];
                bArrArray[i3 + 1] = bArr[1];
            }
        } else {
            bArrArray = new byte[strArrSplit.length];
            for (int i4 = 0; i4 < strArrSplit.length; i4++) {
                int iZzbn3 = zzve.zzbn(strArrSplit[i4]);
                bArrArray[i4] = (byte) ((iZzbn3 >> 24) ^ (((iZzbn3 & 255) ^ ((iZzbn3 >> 8) & 255)) ^ ((iZzbn3 >> 16) & 255)));
            }
        }
        this.zzbwc = zznf();
        synchronized (this.mLock) {
            if (this.zzbwc == null) {
                return new byte[0];
            }
            this.zzbwc.reset();
            this.zzbwc.update(bArrArray);
            byte[] bArrDigest = this.zzbwc.digest();
            if (bArrDigest.length <= 4) {
                length = bArrDigest.length;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArrDigest, 0, bArr2, 0, bArr2.length);
            return bArr2;
        }
    }
}
