package org.apache.commons.compress.archivers.zip;

import androidx.core.view.InputDeviceCompat;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
public abstract class ZipUtil {
    private static final byte[] DOS_TIME_MIN = ZipLong.getBytes(8448);

    public static long adjustToLong(int i10) {
        return i10 < 0 ? ((long) i10) + 4294967296L : i10;
    }

    static byte[] copy(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    private static String getUnicodeStringIfOriginalMatches(AbstractUnicodeExtraField abstractUnicodeExtraField, byte[] bArr) {
        if (abstractUnicodeExtraField != null) {
            CRC32 crc32 = new CRC32();
            crc32.update(bArr);
            if (crc32.getValue() == abstractUnicodeExtraField.getNameCRC32()) {
                try {
                    return ZipEncodingHelper.UTF8_ZIP_ENCODING.decode(abstractUnicodeExtraField.getUnicodeName());
                } catch (IOException unused) {
                }
            }
        }
        return null;
    }

    public static byte[] reverse(byte[] bArr) {
        int length = bArr.length - 1;
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            byte b7 = bArr[i10];
            int i11 = length - i10;
            bArr[i10] = bArr[i11];
            bArr[i11] = b7;
        }
        return bArr;
    }

    public static int signedByteToUnsignedInt(byte b7) {
        return b7 >= 0 ? b7 : b7 + 256;
    }

    public static ZipLong toDosTime(Date date) {
        return new ZipLong(toDosTime(date.getTime()));
    }

    static void setNameAndCommentFromExtraFields(ZipArchiveEntry zipArchiveEntry, byte[] bArr, byte[] bArr2) {
        String unicodeStringIfOriginalMatches;
        String unicodeStringIfOriginalMatches2 = getUnicodeStringIfOriginalMatches((UnicodePathExtraField) zipArchiveEntry.getExtraField(UnicodePathExtraField.UPATH_ID), bArr);
        if (unicodeStringIfOriginalMatches2 != null) {
            zipArchiveEntry.setName(unicodeStringIfOriginalMatches2);
            zipArchiveEntry.setNameSource(ZipArchiveEntry.NameSource.UNICODE_EXTRA_FIELD);
        }
        if (bArr2 == null || bArr2.length <= 0 || (unicodeStringIfOriginalMatches = getUnicodeStringIfOriginalMatches((UnicodeCommentExtraField) zipArchiveEntry.getExtraField(UnicodeCommentExtraField.UCOM_ID), bArr2)) == null) {
            return;
        }
        zipArchiveEntry.setComment(unicodeStringIfOriginalMatches);
        zipArchiveEntry.setCommentSource(ZipArchiveEntry.CommentSource.UNICODE_EXTRA_FIELD);
    }

    public static byte[] toDosTime(long j6) {
        byte[] bArr = new byte[4];
        toDosTime(j6, bArr, 0);
        return bArr;
    }

    public static byte unsignedIntToSignedByte(int i10) {
        if (i10 <= 255 && i10 >= 0) {
            return i10 < 128 ? (byte) i10 : (byte) (i10 + InputDeviceCompat.SOURCE_ANY);
        }
        throw new IllegalArgumentException("Can only convert non-negative integers between [0,255] to byte: [" + i10 + "]");
    }

    static long bigToLong(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return bigInteger.longValue();
        }
        throw new NumberFormatException("The BigInteger cannot fit inside a 64 bit java long: [" + bigInteger + "]");
    }

    static boolean canHandleEntryData(ZipArchiveEntry zipArchiveEntry) {
        if (supportsEncryptionOf(zipArchiveEntry) && supportsMethodOf(zipArchiveEntry)) {
            return true;
        }
        return false;
    }

    static void checkRequestedFeatures(ZipArchiveEntry zipArchiveEntry) throws UnsupportedZipFeatureException {
        if (supportsEncryptionOf(zipArchiveEntry)) {
            if (!supportsMethodOf(zipArchiveEntry)) {
                ZipMethod methodByCode = ZipMethod.getMethodByCode(zipArchiveEntry.getMethod());
                if (methodByCode == null) {
                    throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.METHOD, zipArchiveEntry);
                }
                throw new UnsupportedZipFeatureException(methodByCode, zipArchiveEntry);
            }
            return;
        }
        throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.ENCRYPTION, zipArchiveEntry);
    }

    static void copy(byte[] bArr, byte[] bArr2, int i10) {
        if (bArr != null) {
            System.arraycopy(bArr, 0, bArr2, i10, bArr.length);
        }
    }

    public static long dosToJavaTime(long j6) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, ((int) ((j6 >> 25) & 127)) + 1980);
        calendar.set(2, ((int) ((j6 >> 21) & 15)) - 1);
        calendar.set(5, ((int) (j6 >> 16)) & 31);
        calendar.set(11, ((int) (j6 >> 11)) & 31);
        calendar.set(12, ((int) (j6 >> 5)) & 63);
        calendar.set(13, ((int) (j6 << 1)) & 62);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    public static Date fromDosTime(ZipLong zipLong) {
        return new Date(dosToJavaTime(zipLong.getValue()));
    }

    static BigInteger longToBig(long j6) {
        if (j6 >= -2147483648L) {
            if (j6 < 0 && j6 >= -2147483648L) {
                j6 = adjustToLong((int) j6);
            }
            return BigInteger.valueOf(j6);
        }
        throw new IllegalArgumentException("Negative longs < -2^31 not permitted: [" + j6 + "]");
    }

    private static boolean supportsEncryptionOf(ZipArchiveEntry zipArchiveEntry) {
        return !zipArchiveEntry.getGeneralPurposeBit().usesEncryption();
    }

    private static boolean supportsMethodOf(ZipArchiveEntry zipArchiveEntry) {
        if (zipArchiveEntry.getMethod() != 0 && zipArchiveEntry.getMethod() != ZipMethod.UNSHRINKING.getCode() && zipArchiveEntry.getMethod() != ZipMethod.IMPLODING.getCode() && zipArchiveEntry.getMethod() != 8 && zipArchiveEntry.getMethod() != ZipMethod.ENHANCED_DEFLATED.getCode() && zipArchiveEntry.getMethod() != ZipMethod.BZIP2.getCode()) {
            return false;
        }
        return true;
    }

    public static void toDosTime(long j6, byte[] bArr, int i10) {
        toDosTime(Calendar.getInstance(), j6, bArr, i10);
    }

    static void toDosTime(Calendar calendar, long j6, byte[] bArr, int i10) {
        calendar.setTimeInMillis(j6);
        int i11 = calendar.get(1);
        if (i11 < 1980) {
            byte[] bArr2 = DOS_TIME_MIN;
            System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
        } else {
            ZipLong.putLong((calendar.get(13) >> 1) | ((i11 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5), bArr, i10);
        }
    }
}
