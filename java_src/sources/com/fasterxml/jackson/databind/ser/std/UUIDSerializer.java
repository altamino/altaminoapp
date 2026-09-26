package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class UUIDSerializer extends StdScalarSerializer<UUID> {
    static final char[] HEX_CHARS = "0123456789abcdef".toCharArray();

    private static void _appendInt(int i10, char[] cArr, int i11) {
        _appendShort(i10 >> 16, cArr, i11);
        _appendShort(i10, cArr, i11 + 4);
    }

    public UUIDSerializer() {
        super(UUID.class);
    }

    private static void _appendShort(int i10, char[] cArr, int i11) {
        char[] cArr2 = HEX_CHARS;
        cArr[i11] = cArr2[(i10 >> 12) & 15];
        cArr[i11 + 1] = cArr2[(i10 >> 8) & 15];
        cArr[i11 + 2] = cArr2[(i10 >> 4) & 15];
        cArr[i11 + 3] = cArr2[i10 & 15];
    }

    private static final byte[] _asBytes(UUID uuid) {
        byte[] bArr = new byte[16];
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        _appendInt((int) (mostSignificantBits >> 32), bArr, 0);
        _appendInt((int) mostSignificantBits, bArr, 4);
        _appendInt((int) (leastSignificantBits >> 32), bArr, 8);
        _appendInt((int) leastSignificantBits, bArr, 12);
        return bArr;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(UUID uuid) {
        if (uuid == null) {
            return true;
        }
        return uuid.getLeastSignificantBits() == 0 && uuid.getMostSignificantBits() == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(UUID uuid, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (jsonGenerator.canWriteBinaryNatively() && !(jsonGenerator instanceof TokenBuffer)) {
            jsonGenerator.writeBinary(_asBytes(uuid));
            return;
        }
        char[] cArr = new char[36];
        long mostSignificantBits = uuid.getMostSignificantBits();
        _appendInt((int) (mostSignificantBits >> 32), cArr, 0);
        cArr[8] = '-';
        int i10 = (int) mostSignificantBits;
        _appendShort(i10 >>> 16, cArr, 9);
        cArr[13] = '-';
        _appendShort(i10, cArr, 14);
        cArr[18] = '-';
        long leastSignificantBits = uuid.getLeastSignificantBits();
        _appendShort((int) (leastSignificantBits >>> 48), cArr, 19);
        cArr[23] = '-';
        _appendShort((int) (leastSignificantBits >>> 32), cArr, 24);
        _appendInt((int) leastSignificantBits, cArr, 28);
        jsonGenerator.writeString(cArr, 0, 36);
    }

    private static final void _appendInt(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >> 24);
        bArr[i11 + 1] = (byte) (i10 >> 16);
        bArr[i11 + 2] = (byte) (i10 >> 8);
        bArr[i11 + 3] = (byte) i10;
    }
}
