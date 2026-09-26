package com.google.zxing.oned;

import com.narvii.util.ws.WsMessage;

/* JADX INFO: loaded from: classes.dex */
public final class e extends n {
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";
    static final int ASTERISK_ENCODING = 148;
    static final int[] CHARACTER_ENCODINGS = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 208, 133, 388, 196, 168, 162, 138, 42};
    private final int[] counters;
    private final StringBuilder decodeRowResult;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;

    public e() {
        this(false);
    }

    public e(boolean z6) {
        this(z6, false);
    }

    public e(boolean z6, boolean z10) {
        this.usingCheckDigit = z6;
        this.extendedMode = z10;
        this.decodeRowResult = new StringBuilder(20);
        this.counters = new int[9];
    }
}
