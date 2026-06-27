package com.google.zxing.datamatrix.encoder;

import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.model.User;
import com.narvii.permisson.NVPermission;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public final class ErrorCorrection {
    private static final int MODULO_VALUE = 301;
    private static final int[] FACTOR_SETS = {5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};
    private static final int[][] FACTORS = {new int[]{228, 48, 15, 111, 62}, new int[]{23, 68, IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 134, 240, 92, User.USER_ROLE_SYSTEM}, new int[]{28, 24, 185, 166, 223, 248, 116, 255, 110, 61}, new int[]{175, 138, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 12, 194, 168, 39, 245, 60, 97, 120}, new int[]{41, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 158, 91, 61, 42, ScriptIntrinsicBLAS.RIGHT, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 97, 178, 100, 242}, new int[]{Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 97, PsExtractor.AUDIO_STREAM, 252, 95, 9, 157, 119, 138, 45, 18, 186, 83, 185}, new int[]{83, 195, 100, 39, TsExtractor.TS_PACKET_SIZE, 75, 66, 61, 241, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 109, 129, 94, User.USER_ROLE_SYSTEM, 225, 48, 90, TsExtractor.TS_PACKET_SIZE}, new int[]{15, 195, IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 9, 233, 71, 168, 2, TsExtractor.TS_PACKET_SIZE, 160, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 145, User.USER_ROLE_NEWS_FEED, 79, 108, 82, 27, 174, 186, TsExtractor.TS_STREAM_TYPE_AC4}, new int[]{52, 190, 88, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 109, 39, 176, 21, Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 197, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 223, Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 21, 5, TsExtractor.TS_STREAM_TYPE_AC4, User.USER_ROLE_SYSTEM, 124, 12, 181, 184, 96, 50, 193}, new int[]{211, 231, 43, 97, 71, 96, 103, 174, 37, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 170, 53, 75, 34, 249, 121, 17, 138, 110, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, ScriptIntrinsicBLAS.LEFT, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 120, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 233, 168, 93, 255}, new int[]{245, 127, 242, 218, 130, 250, 162, 181, 102, 120, 84, 179, 220, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 80, 182, 229, 18, 2, 4, 68, 33, 101, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 95, 119, 115, 44, 175, 184, 59, 25, 225, 98, 81, 112}, new int[]{77, 193, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 31, 19, 38, 22, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 247, 105, 122, 2, 245, 133, 242, 8, 175, 95, 100, 9, 167, 105, 214, 111, 57, 121, 21, 1, User.USER_ROLE_NEWS_FEED, 57, 54, 101, 248, 202, 69, 50, 150, 177, 226, 5, 9, 5}, new int[]{245, 132, TsExtractor.TS_STREAM_TYPE_AC4, 223, 96, 32, 117, 22, 238, 133, 238, 231, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, TsExtractor.TS_PACKET_SIZE, 237, 87, 191, 106, 16, 147, 118, 23, 37, 90, 170, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 131, 88, 120, 100, 66, 138, 186, 240, 82, 44, 176, 87, 187, 147, 160, 175, 69, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 92, User.USER_ROLE_NEWS_FEED, 225, 19}, new int[]{175, 9, 223, 238, 12, 17, 220, 208, 100, 29, 175, 170, ApiService.API_ERR_USER_NOT_IN_COMMUNITY, PsExtractor.AUDIO_STREAM, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN, 235, 150, 159, 36, 223, 38, 200, 132, 54, 228, 146, 218, 234, 117, NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 29, 232, IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 238, 22, 150, 201, 117, 62, com.narvii.util.Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 164, 13, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 245, 127, 67, 247, 28, Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 43, NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 107, 233, 53, 143, 46}, new int[]{242, 93, 169, 50, IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 210, 39, 118, 202, TsExtractor.TS_PACKET_SIZE, 201, PsExtractor.PRIVATE_STREAM_1, 143, 108, 196, 37, 185, 112, 134, ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 245, 63, 197, 190, 250, 106, 185, 221, 175, 64, 114, 71, 161, 44, 147, 6, 27, 218, 51, 63, 87, 10, 40, 130, TsExtractor.TS_PACKET_SIZE, 17, 163, 31, 176, 170, 4, 107, 232, 7, 94, 166, 224, 124, 86, 47, 11, 204}, new int[]{220, 228, 173, 89, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 149, 159, 56, 89, 33, 147, IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 36, 73, 127, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 248, 180, 234, 197, 158, 177, 68, 122, 93, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 15, 160, 227, 236, 66, WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 185, 202, 167, 179, 25, 220, 232, 96, 210, 231, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 223, 239, 181, 241, 59, 52, TsExtractor.TS_STREAM_TYPE_AC4, 25, 49, 232, 211, PsExtractor.PRIVATE_STREAM_1, 64, 54, 108, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 132, 63, 96, 103, 82, 186}};
    private static final int[] LOG = new int[256];
    private static final int[] ALOG = new int[255];

    static {
        int i = 1;
        for (int i2 = 0; i2 < 255; i2++) {
            ALOG[i2] = i;
            LOG[i] = i2;
            i <<= 1;
            if (i >= 256) {
                i ^= 301;
            }
        }
    }

    public static String encodeECC200(String str, SymbolInfo symbolInfo) {
        if (str.length() != symbolInfo.getDataCapacity()) {
            throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
        }
        StringBuilder sb = new StringBuilder(symbolInfo.getDataCapacity() + symbolInfo.getErrorCodewords());
        sb.append(str);
        int interleavedBlockCount = symbolInfo.getInterleavedBlockCount();
        if (interleavedBlockCount == 1) {
            sb.append(createECCBlock(str, symbolInfo.getErrorCodewords()));
        } else {
            sb.setLength(sb.capacity());
            int[] iArr = new int[interleavedBlockCount];
            int[] iArr2 = new int[interleavedBlockCount];
            int[] iArr3 = new int[interleavedBlockCount];
            int i = 0;
            while (i < interleavedBlockCount) {
                int i2 = i + 1;
                iArr[i] = symbolInfo.getDataLengthForInterleavedBlock(i2);
                iArr2[i] = symbolInfo.getErrorLengthForInterleavedBlock(i2);
                iArr3[i] = 0;
                if (i > 0) {
                    iArr3[i] = iArr3[i - 1] + iArr[i];
                }
                i = i2;
            }
            for (int i3 = 0; i3 < interleavedBlockCount; i3++) {
                StringBuilder sb2 = new StringBuilder(iArr[i3]);
                for (int i4 = i3; i4 < symbolInfo.getDataCapacity(); i4 += interleavedBlockCount) {
                    sb2.append(str.charAt(i4));
                }
                String strCreateECCBlock = createECCBlock(sb2.toString(), iArr2[i3]);
                int i5 = i3;
                int i6 = 0;
                while (i5 < iArr2[i3] * interleavedBlockCount) {
                    sb.setCharAt(symbolInfo.getDataCapacity() + i5, strCreateECCBlock.charAt(i6));
                    i5 += interleavedBlockCount;
                    i6++;
                }
            }
        }
        return sb.toString();
    }

    private static String createECCBlock(CharSequence charSequence, int i) {
        return createECCBlock(charSequence, 0, charSequence.length(), i);
    }

    private static String createECCBlock(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = 0;
        while (true) {
            int[] iArr = FACTOR_SETS;
            if (i4 >= iArr.length) {
                i4 = -1;
                break;
            }
            if (iArr[i4] == i3) {
                break;
            }
            i4++;
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Illegal number of error correction codewords specified: " + i3);
        }
        int[] iArr2 = FACTORS[i4];
        char[] cArr = new char[i3];
        for (int i5 = 0; i5 < i3; i5++) {
            cArr[i5] = 0;
        }
        for (int i6 = i; i6 < i + i2; i6++) {
            int i7 = i3 - 1;
            int iCharAt = cArr[i7] ^ charSequence.charAt(i6);
            while (i7 > 0) {
                if (iCharAt != 0 && iArr2[i7] != 0) {
                    char c = cArr[i7 - 1];
                    int[] iArr3 = ALOG;
                    int[] iArr4 = LOG;
                    cArr[i7] = (char) (c ^ iArr3[(iArr4[iCharAt] + iArr4[iArr2[i7]]) % 255]);
                } else {
                    cArr[i7] = cArr[i7 - 1];
                }
                i7--;
            }
            if (iCharAt != 0 && iArr2[0] != 0) {
                int[] iArr5 = ALOG;
                int[] iArr6 = LOG;
                cArr[0] = (char) iArr5[(iArr6[iCharAt] + iArr6[iArr2[0]]) % 255];
            } else {
                cArr[0] = 0;
            }
        }
        char[] cArr2 = new char[i3];
        for (int i8 = 0; i8 < i3; i8++) {
            cArr2[i8] = cArr[(i3 - i8) - 1];
        }
        return String.valueOf(cArr2);
    }
}
