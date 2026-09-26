package androidx.media3.extractor.mp4;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class PsshAtomUtil {
    private static final String TAG = "PsshAtomUtil";

    private static class PsshAtom {
        private final byte[] schemeData;
        private final UUID uuid;
        private final int version;

        public PsshAtom(UUID uuid, int i10, byte[] bArr) {
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
    private static PsshAtom d(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        if (parsableByteArray.g() < 32) {
            return null;
        }
        parsableByteArray.U(0);
        if (parsableByteArray.q() != parsableByteArray.a() + 4 || parsableByteArray.q() != 1886614376) {
            return null;
        }
        int iC = Atom.c(parsableByteArray.q());
        if (iC > 1) {
            Log.i(TAG, "Unsupported pssh version: " + iC);
            return null;
        }
        UUID uuid = new UUID(parsableByteArray.A(), parsableByteArray.A());
        if (iC == 1) {
            parsableByteArray.V(parsableByteArray.L() * 16);
        }
        int iL = parsableByteArray.L();
        if (iL != parsableByteArray.a()) {
            return null;
        }
        byte[] bArr2 = new byte[iL];
        parsableByteArray.l(bArr2, 0, iL);
        return new PsshAtom(uuid, iC, bArr2);
    }

    private PsshAtomUtil() {
    }

    public static boolean c(byte[] bArr) {
        if (d(bArr) != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public static byte[] e(byte[] bArr, UUID uuid) {
        PsshAtom psshAtomD = d(bArr);
        if (psshAtomD == null) {
            return null;
        }
        if (uuid.equals(psshAtomD.uuid)) {
            return psshAtomD.schemeData;
        }
        Log.i(TAG, "UUID mismatch. Expected: " + uuid + ", got: " + psshAtomD.uuid + ".");
        return null;
    }

    @Nullable
    public static UUID f(byte[] bArr) {
        PsshAtom psshAtomD = d(bArr);
        if (psshAtomD != null) {
            return psshAtomD.uuid;
        }
        return null;
    }

    public static int g(byte[] bArr) {
        PsshAtom psshAtomD = d(bArr);
        if (psshAtomD != null) {
            return psshAtomD.version;
        }
        return -1;
    }
}
