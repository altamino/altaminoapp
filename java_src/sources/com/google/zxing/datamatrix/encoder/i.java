package com.google.zxing.datamatrix.encoder;

import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.model.User;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes4.dex */
public final class i {
    private static final int MODULO_VALUE = 301;
    private static final int[] FACTOR_SETS = {5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};
    private static final int[][] FACTORS = {new int[]{228, 48, 15, 111, 62}, new int[]{23, 68, 144, 134, 240, 92, 254}, new int[]{28, 24, 185, 166, 223, 248, 116, 255, 110, 61}, new int[]{175, 138, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 12, 194, 168, 39, 245, 60, 97, 120}, new int[]{41, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 158, 91, 61, 42, ScriptIntrinsicBLAS.RIGHT, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 97, 178, 100, 242}, new int[]{Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 97, 192, 252, 95, 9, Constants.ERR_MODULE_NOT_FOUND, 119, 138, 45, 18, 186, 83, 185}, new int[]{83, 195, 100, 39, 188, 75, 66, 61, 241, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 109, 129, 94, 254, 225, 48, 90, 188}, new int[]{15, 195, 244, 9, 233, 71, 168, 2, 188, 160, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 145, User.USER_ROLE_NEWS_FEED, 79, 108, 82, 27, 174, 186, 172}, new int[]{52, 190, 88, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 109, 39, 176, 21, 155, 197, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 223, 155, 21, 5, 172, 254, 124, 12, 181, 184, 96, 50, 193}, new int[]{211, 231, 43, 97, 71, 96, 103, 174, 37, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 170, 53, 75, 34, 249, 121, 17, 138, 110, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, ScriptIntrinsicBLAS.LEFT, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 120, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 233, 168, 93, 255}, new int[]{245, 127, 242, 218, 130, 250, 162, 181, 102, 120, 84, 179, 220, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 80, 182, 229, 18, 2, 4, 68, 33, 101, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 95, 119, 115, 44, 175, 184, 59, 25, 225, 98, 81, 112}, new int[]{77, 193, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 31, 19, 38, 22, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 247, 105, 122, 2, 245, 133, 242, 8, 175, 95, 100, 9, 167, 105, 214, 111, 57, 121, 21, 1, User.USER_ROLE_NEWS_FEED, 57, 54, 101, 248, 202, 69, 50, TextFieldImplKt.AnimationDuration, 177, 226, 5, 9, 5}, new int[]{245, 132, 172, 223, 96, 32, 117, 22, 238, 133, 238, 231, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 188, 237, 87, 191, 106, 16, 147, 118, 23, 37, 90, 170, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 131, 88, 120, 100, 66, 138, 186, 240, 82, 44, 176, 87, 187, 147, 160, 175, 69, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 92, User.USER_ROLE_NEWS_FEED, 225, 19}, new int[]{175, 9, 223, 238, 12, 17, 220, 208, 100, 29, 175, 170, ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 192, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN, 235, TextFieldImplKt.AnimationDuration, 159, 36, 223, 38, 200, 132, 54, 228, 146, 218, 234, 117, 203, 29, 232, 144, 238, 22, TextFieldImplKt.AnimationDuration, 201, 117, 62, 207, 164, 13, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 245, 127, 67, 247, 28, 155, 43, 203, 107, 233, 53, 143, 46}, new int[]{242, 93, 169, 50, 144, 210, 39, 118, 202, 188, 201, 189, 143, 108, 196, 37, 185, 112, 134, ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 245, 63, 197, 190, 250, 106, 185, 221, 175, 64, 114, 71, 161, 44, 147, 6, 27, 218, 51, 63, 87, 10, 40, 130, 188, 17, 163, 31, 176, 170, 4, 107, 232, 7, 94, 166, 224, 124, 86, 47, 11, ComposerKt.providerMapsKey}, new int[]{220, 228, 173, 89, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 149, 159, 56, 89, 33, 147, 244, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 36, 73, 127, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 248, 180, 234, 197, 158, 177, 68, 122, 93, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 15, 160, 227, 236, 66, WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 185, 202, 167, 179, 25, 220, 232, 96, 210, 231, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 223, 239, 181, 241, 59, 52, 172, 25, 49, 232, 211, 189, 64, 54, 108, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 132, 63, 96, 103, 82, 186}};
    private static final int[] LOG = new int[256];
    private static final int[] ALOG = new int[255];

    private static String b(CharSequence charSequence, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15 = 0;
        while (true) {
            int[] iArr = FACTOR_SETS;
            if (i15 >= iArr.length) {
                i15 = -1;
                break;
            }
            if (iArr[i15] == i12) {
                break;
            }
            i15++;
        }
        if (i15 < 0) {
            throw new IllegalArgumentException("Illegal number of error correction codewords specified: ".concat(String.valueOf(i12)));
        }
        int[] iArr2 = FACTORS[i15];
        char[] cArr = new char[i12];
        for (int i16 = 0; i16 < i12; i16++) {
            cArr[i16] = 0;
        }
        for (int i17 = i10; i17 < i10 + i11; i17++) {
            int i18 = i12 - 1;
            int iCharAt = cArr[i18] ^ charSequence.charAt(i17);
            while (i18 > 0) {
                if (iCharAt == 0 || (i14 = iArr2[i18]) == 0) {
                    cArr[i18] = cArr[i18 - 1];
                } else {
                    char c7 = cArr[i18 - 1];
                    int[] iArr3 = ALOG;
                    int[] iArr4 = LOG;
                    cArr[i18] = (char) (iArr3[(iArr4[iCharAt] + iArr4[i14]) % 255] ^ c7);
                }
                i18--;
            }
            if (iCharAt == 0 || (i13 = iArr2[0]) == 0) {
                cArr[0] = 0;
            } else {
                int[] iArr5 = ALOG;
                int[] iArr6 = LOG;
                cArr[0] = (char) iArr5[(iArr6[iCharAt] + iArr6[i13]) % 255];
            }
        }
        char[] cArr2 = new char[i12];
        for (int i19 = 0; i19 < i12; i19++) {
            cArr2[i19] = cArr[(i12 - i19) - 1];
        }
        return String.valueOf(cArr2);
    }

    static {
        int i10 = 1;
        for (int i11 = 0; i11 < 255; i11++) {
            ALOG[i11] = i10;
            LOG[i10] = i11;
            i10 <<= 1;
            if (i10 >= 256) {
                i10 ^= 301;
            }
        }
    }

    private static String a(CharSequence charSequence, int i10) {
        return b(charSequence, 0, charSequence.length(), i10);
    }

    public static String c(String str, k kVar) {
        if (str.length() == kVar.a()) {
            StringBuilder sb = new StringBuilder(kVar.a() + kVar.c());
            sb.append(str);
            int iF = kVar.f();
            if (iF == 1) {
                sb.append(a(str, kVar.c()));
            } else {
                sb.setLength(sb.capacity());
                int[] iArr = new int[iF];
                int[] iArr2 = new int[iF];
                int[] iArr3 = new int[iF];
                int i10 = 0;
                while (i10 < iF) {
                    int i11 = i10 + 1;
                    iArr[i10] = kVar.b(i11);
                    iArr2[i10] = kVar.d(i11);
                    iArr3[i10] = 0;
                    if (i10 > 0) {
                        iArr3[i10] = iArr3[i10 - 1] + iArr[i10];
                    }
                    i10 = i11;
                }
                for (int i12 = 0; i12 < iF; i12++) {
                    StringBuilder sb2 = new StringBuilder(iArr[i12]);
                    for (int i13 = i12; i13 < kVar.a(); i13 += iF) {
                        sb2.append(str.charAt(i13));
                    }
                    String strA = a(sb2.toString(), iArr2[i12]);
                    int i14 = i12;
                    int i15 = 0;
                    while (i14 < iArr2[i12] * iF) {
                        sb.setCharAt(kVar.a() + i14, strA.charAt(i15));
                        i14 += iF;
                        i15++;
                    }
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
    }
}
