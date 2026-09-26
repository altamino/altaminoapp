package com.google.firebase.crashlytics.internal.common;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
class h {
    private static String _clsId;
    private static final AtomicLong _sequenceNumber = new AtomicLong(0);

    private static byte[] a(long j6) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt((int) j6);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    private static byte[] b(long j6) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.putShort((short) j6);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    public String toString() {
        return _clsId;
    }

    private void d(byte[] bArr) {
        byte[] bArrB = b(_sequenceNumber.incrementAndGet());
        bArr[6] = bArrB[0];
        bArr[7] = bArrB[1];
    }

    private void e(byte[] bArr) {
        long time = new Date().getTime();
        byte[] bArrA = a(time / 1000);
        bArr[0] = bArrA[0];
        bArr[1] = bArrA[1];
        bArr[2] = bArrA[2];
        bArr[3] = bArrA[3];
        byte[] bArrB = b(time % 1000);
        bArr[4] = bArrB[0];
        bArr[5] = bArrB[1];
    }

    h(b0 b0Var) {
        byte[] bArr = new byte[10];
        e(bArr);
        d(bArr);
        c(bArr);
        String strZ = i.z(b0Var.a().c());
        String strT = i.t(bArr);
        Locale locale = Locale.US;
        _clsId = String.format(locale, "%s%s%s%s", strT.substring(0, 12), strT.substring(12, 16), strT.subSequence(16, 20), strZ.substring(0, 12)).toUpperCase(locale);
    }

    private void c(byte[] bArr) {
        byte[] bArrB = b(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = bArrB[0];
        bArr[9] = bArrB[1];
    }
}
