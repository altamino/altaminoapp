package com.google.android.exoplayer2.drm;

import java.util.UUID;

/* JADX INFO: loaded from: classes10.dex */
public final class g0 implements com.google.android.exoplayer2.decoder.b {
    public static final boolean WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC;
    public final boolean forceAllowInsecureDecoderComponents;
    public final byte[] sessionId;
    public final UUID uuid;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z6;
        if ("Amazon".equals(com.google.android.exoplayer2.util.o0.MANUFACTURER)) {
            String str = com.google.android.exoplayer2.util.o0.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC = z6;
    }

    public g0(UUID uuid, byte[] bArr, boolean z6) {
        this.uuid = uuid;
        this.sessionId = bArr;
        this.forceAllowInsecureDecoderComponents = z6;
    }
}
