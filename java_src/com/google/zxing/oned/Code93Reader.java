package com.google.zxing.oned;

import com.narvii.video.SharedVideoView;
import com.tonyodev.fetch.FetchService;
import org.apache.commons.compress.archivers.zip.UnixStat;

/* loaded from: classes2.dex */
public final class Code93Reader extends OneDReader {
    private static final int ASTERISK_ENCODING;
    static final int[] CHARACTER_ENCODINGS;
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private final int[] counters = new int[6];

    static {
        int[] iArr = {276, 328, FetchService.ACTION_REMOVE_REQUEST, FetchService.ACTION_UPDATE_REQUEST_URL, 296, 292, 290, 336, 274, 266, 424, UnixStat.DEFAULT_FILE_PERM, 418, SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, 406, 410, 364, 358, FetchService.ACTION_ENQUEUE, FetchService.ACTION_NETWORK, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[47];
    }
}
