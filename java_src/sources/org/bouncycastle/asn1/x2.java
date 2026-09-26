package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes10.dex */
class x2 {
    private static final long MAX_MEMORY = Runtime.getRuntime().maxMemory();

    static int a(InputStream inputStream) {
        if (inputStream instanceof v2) {
            return ((v2) inputStream).d();
        }
        if (inputStream instanceof o) {
            return ((o) inputStream).h();
        }
        if (inputStream instanceof ByteArrayInputStream) {
            return ((ByteArrayInputStream) inputStream).available();
        }
        if (inputStream instanceof FileInputStream) {
            try {
                FileChannel channel = ((FileInputStream) inputStream).getChannel();
                long size = channel != null ? channel.size() : 2147483647L;
                if (size < 2147483647L) {
                    return (int) size;
                }
            } catch (IOException unused) {
            }
        }
        long j6 = MAX_MEMORY;
        if (j6 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j6;
    }
}
