package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.t;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class l {
    private static final String TAG = "PsshAtomUtil";

    private static class a {
        private final byte[] schemeData;
        private final UUID uuid;
        private final int version;

        public a(UUID uuid, int i10, byte[] bArr) {
            this.uuid = uuid;
            this.version = i10;
            this.schemeData = bArr;
        }
    }

    public static byte[] a(UUID uuid, @Nullable byte[] bArr) {
        return b(uuid, null, bArr);
    }

    public static byte[] b(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1886614376);
        byteBufferAllocate.putInt(uuidArr != null ? 16777216 : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    @Nullable
    private static a d(byte[] bArr) {
        c0 c0Var = new c0(bArr);
        if (c0Var.f() < 32) {
            return null;
        }
        c0Var.P(0);
        if (c0Var.n() != c0Var.a() + 4 || c0Var.n() != 1886614376) {
            return null;
        }
        int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
        if (iC > 1) {
            t.i(TAG, "Unsupported pssh version: " + iC);
            return null;
        }
        UUID uuid = new UUID(c0Var.w(), c0Var.w());
        if (iC == 1) {
            c0Var.Q(c0Var.H() * 16);
        }
        int iH = c0Var.H();
        if (iH != c0Var.a()) {
            return null;
        }
        byte[] bArr2 = new byte[iH];
        c0Var.j(bArr2, 0, iH);
        return new a(uuid, iC, bArr2);
    }

    public static boolean c(byte[] bArr) {
        if (d(bArr) != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public static byte[] e(byte[] bArr, UUID uuid) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return null;
        }
        if (uuid.equals(aVarD.uuid)) {
            return aVarD.schemeData;
        }
        t.i(TAG, "UUID mismatch. Expected: " + uuid + ", got: " + aVarD.uuid + ".");
        return null;
    }

    @Nullable
    public static UUID f(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD != null) {
            return aVarD.uuid;
        }
        return null;
    }

    public static int g(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD != null) {
            return aVarD.version;
        }
        return -1;
    }
}
