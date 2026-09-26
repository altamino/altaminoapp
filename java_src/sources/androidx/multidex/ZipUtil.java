package androidx.multidex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes8.dex */
final class ZipUtil {
    private static final int BUFFER_SIZE = 16384;
    private static final int ENDHDR = 22;
    private static final int ENDSIG = 101010256;

    static class CentralDirectory {
        long offset;
        long size;

        CentralDirectory() {
        }
    }

    static long computeCrcOfCentralDir(RandomAccessFile randomAccessFile, CentralDirectory centralDirectory) throws IOException {
        CRC32 crc32 = new CRC32();
        long j6 = centralDirectory.size;
        randomAccessFile.seek(centralDirectory.offset);
        byte[] bArr = new byte[16384];
        int i10 = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j6));
        while (i10 != -1) {
            crc32.update(bArr, 0, i10);
            j6 -= (long) i10;
            if (j6 == 0) {
                break;
            }
            i10 = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j6));
        }
        return crc32.getValue();
    }

    static long getZipCrc(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return computeCrcOfCentralDir(randomAccessFile, findCentralDirectory(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }

    ZipUtil() {
    }

    static CentralDirectory findCentralDirectory(RandomAccessFile randomAccessFile) throws IOException {
        long length = randomAccessFile.length();
        long j6 = length - 22;
        long j10 = 0;
        if (j6 >= 0) {
            long j11 = length - 65558;
            if (j11 >= 0) {
                j10 = j11;
            }
            int iReverseBytes = Integer.reverseBytes(ENDSIG);
            do {
                randomAccessFile.seek(j6);
                if (randomAccessFile.readInt() == iReverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    CentralDirectory centralDirectory = new CentralDirectory();
                    centralDirectory.size = ((long) Integer.reverseBytes(randomAccessFile.readInt())) & 4294967295L;
                    centralDirectory.offset = ((long) Integer.reverseBytes(randomAccessFile.readInt())) & 4294967295L;
                    return centralDirectory;
                }
                j6--;
            } while (j6 >= j10);
            throw new ZipException("End Of Central Directory signature not found");
        }
        throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
    }
}
