package com.narvii.video.faceunity;

import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class authpack {
    public static int sha1_32(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(bArr);
            return ((bArrDigest[0] & 255) << 24) + ((bArrDigest[1] & 255) << 16) + ((bArrDigest[2] & 255) << 8) + ((bArrDigest[3] & 255) << 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    /*  JADX ERROR: StackOverflowError in pass: BlockProcessor
        java.lang.StackOverflowError
        	at jadx.core.dex.visitors.blocks.FixMultiEntryLoops.colorDFS(FixMultiEntryLoops.java:110)
        	at jadx.core.dex.visitors.blocks.FixMultiEntryLoops.colorDFS(FixMultiEntryLoops.java:113)
        */
    public static byte[] A() {
        /*
            Method dump skipped, instructions count: 26815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.faceunity.authpack.A():byte[]");
    }
}
