package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.google.common.base.c;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;

/* JADX INFO: loaded from: classes10.dex */
public class UUIDDeserializer extends FromStringDeserializer<UUID> {
    static final int[] HEX_DIGITS;
    public static final UUIDDeserializer instance;
    private static final long serialVersionUID = 1;

    private UUID _fromBytes(byte[] bArr, DeserializationContext deserializationContext) throws IOException {
        if (bArr.length != 16) {
            deserializationContext.mappingException("Can only construct UUIDs from byte[16]; got " + bArr.length + " bytes");
        }
        return new UUID(_long(bArr, 0), _long(bArr, 8));
    }

    static {
        int[] iArr = new int[127];
        HEX_DIGITS = iArr;
        Arrays.fill(iArr, -1);
        for (int i10 = 0; i10 < 10; i10++) {
            HEX_DIGITS[i10 + 48] = i10;
        }
        for (int i11 = 0; i11 < 6; i11++) {
            int[] iArr2 = HEX_DIGITS;
            int i12 = i11 + 10;
            iArr2[i11 + 97] = i12;
            iArr2[i11 + 65] = i12;
        }
        instance = new UUIDDeserializer();
    }

    public UUIDDeserializer() {
        super(UUID.class);
    }

    static int _badChar(String str, int i10, char c7) {
        throw new NumberFormatException("Non-hex character '" + c7 + "', not valid character for a UUID String' (value 0x" + Integer.toHexString(c7) + ") for UUID String \"" + str + "\"");
    }

    private void _badFormat(String str) {
        throw new NumberFormatException("UUID has to be represented by the standard 36-char representation");
    }

    private static int _int(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | (bArr[i10] << c.CAN) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    public UUID _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
        if (str.length() != 36) {
            if (str.length() == 24) {
                return _fromBytes(Base64Variants.getDefaultVariant().decode(str), deserializationContext);
            }
            _badFormat(str);
        }
        if (str.charAt(8) != '-' || str.charAt(13) != '-' || str.charAt(18) != '-' || str.charAt(23) != '-') {
            _badFormat(str);
        }
        return new UUID((((long) intFromChars(str, 0)) << 32) + ((((long) shortFromChars(str, 9)) << 16) | ((long) shortFromChars(str, 14))), ((((long) intFromChars(str, 28)) << 32) >>> 32) | (((long) (shortFromChars(str, 24) | (shortFromChars(str, 19) << 16))) << 32));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    public UUID _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        if (obj instanceof byte[]) {
            return _fromBytes((byte[]) obj, deserializationContext);
        }
        super._deserializeEmbedded(obj, deserializationContext);
        return null;
    }

    private static long _long(byte[] bArr, int i10) {
        return ((((long) _int(bArr, i10 + 4)) << 32) >>> 32) | (((long) _int(bArr, i10)) << 32);
    }

    static int byteFromChars(String str, int i10) {
        char cCharAt = str.charAt(i10);
        int i11 = i10 + 1;
        char cCharAt2 = str.charAt(i11);
        if (cCharAt <= 127 && cCharAt2 <= 127) {
            int[] iArr = HEX_DIGITS;
            int i12 = iArr[cCharAt2] | (iArr[cCharAt] << 4);
            if (i12 >= 0) {
                return i12;
            }
        }
        if (cCharAt <= 127 && HEX_DIGITS[cCharAt] >= 0) {
            return _badChar(str, i11, cCharAt2);
        }
        return _badChar(str, i10, cCharAt);
    }

    static int intFromChars(String str, int i10) {
        return (byteFromChars(str, i10) << 24) + (byteFromChars(str, i10 + 2) << 16) + (byteFromChars(str, i10 + 4) << 8) + byteFromChars(str, i10 + 6);
    }

    static int shortFromChars(String str, int i10) {
        return (byteFromChars(str, i10) << 8) + byteFromChars(str, i10 + 2);
    }
}
