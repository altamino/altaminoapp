package org.apache.commons.compress.utils;

import java.io.InputStream;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes6.dex */
public class CRC32VerifyingInputStream extends ChecksumVerifyingInputStream {
    public CRC32VerifyingInputStream(InputStream inputStream, long j6, int i10) {
        this(inputStream, j6, ((long) i10) & 4294967295L);
    }

    public CRC32VerifyingInputStream(InputStream inputStream, long j6, long j10) {
        super(new CRC32(), inputStream, j6, j10);
    }
}
