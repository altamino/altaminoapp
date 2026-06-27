package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.tonyodev.fetch.FetchConst;
import io.agora.rtc.Constants;
import io.agora.rtc.internal.RtcEngineEvent;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class K1 {
    private static K1 A01;
    private static byte[] A02;
    private static final String A03;
    private final SharedPreferences A00;

    private static String A0a(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_ALREADY_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0h() {
        A02 = new byte[]{-31, -28, -18, -9, -33, -20, -17, -25, -25, -23, -18, -25, -33, -27, -18, -28, -16, -17, -23, -18, -12, -33, -16, -14, -27, -26, -23, -8, 65, 68, 78, 87, 63, 65, 67, 67, 69, 80, 84, 65, 66, 76, 69, 63, 83, 84, 65, 67, 75, 84, 82, 65, 67, 69, 63, 76, 69, 78, 71, 84, 72, 12, 15, 25, 34, 10, 27, 23, 12, 36, 12, 13, 23, 16, 30, 10, 23, 26, 18, 18, 20, 25, 18, 10, 16, 25, 12, 13, 23, 16, 15, -37, -34, -24, -15, -39, -19, -30, -23, -17, -26, -34, -39, -32, -37, -29, -26, -39, -23, -24, -39, -35, -26, -33, -37, -20, -18, -33, -14, -18, -39, -30, -18, -18, -22, -39, -36, -26, -23, -35, -27, -33, -34, -13, -10, 0, 9, -15, 5, 11, 0, -11, -15, -13, -8, 6, -9, 4, -15, -13, -10, -15, -2, 1, -13, -10, 6, -18, -15, -5, 4, -20, -5, -18, 1, -10, 3, -14, -20, 3, -10, -14, 4, -20, 0, -5, -18, -3, 0, -11, -4, 1, -20, -7, -4, -12, -12, -10, -5, -12, -20, -14, -5, -18, -17, -7, -14, -15, -26, -23, -13, -4, -28, -26, -13, -23, -9, -12, -18, -23, -28, -13, -22, -7, -4, -12, -9, -16, -28, -23, -22, -21, -26, -6, -15, -7, -28, -7, -18, -14, -22, -12, -6, -7, -28, -14, -8, -18, -15, -5, 4, -20, -6, -18, -3, -3, -20, -6, -18, -1, -8, 2, -3, -20, -10, -6, -3, -1, -14, 0, 0, -10, -4, -5, -20, -18, -13, 1, -14, -1, -20, -10, -6, -18, -12, -14, -20, -7, -4, -18, -15, 72, 75, 85, 94, 70, 72, 85, 75, 89, 86, 80, 75, 70, 74, 72, 74, 79, 76, 70, 75, 76, 73, 92, 78, 70, 76, 93, 76, 85, 91, 90, 70, 90, 72, 84, 87, 83, 80, 85, 78, 70, 89, 72, 91, 76, -30, -27, -17, -8, -32, -26, -17, -23, -30, -17, -28, -26, -27, -32, -9, -22, -26, -8, -30, -29, -22, -19, -22, -11, -6, -32, -30, -13, -26, -30, -32, -28, -23, -26, -28, -20, -17, -14, -4, 5, -19, -12, -9, -6, 2, -13, 0, -19, -16, -9, -14, -14, -9, -4, -11, -19, 2, -3, -7, -13, -4, 86, 79, 74, 71, 74, 70, 69, 64, 77, 80, 72, 72, 74, 79, 72, 64, 70, 87, 70, 79, 85, 64, 77, 74, 78, 74, 85, -2, 1, 11, 20, -4, 17, 12, 13, -4, -2, 0, 17, 6, 19, 6, 17, 22, -4, 19, 6, 2, 20, -2, -1, 6, 9, 6, 17, 22, 39, 42, 52, 61, 37, 41, 56, 39, 57, 46, 37, 57, 46, 47, 43, 50, 42, 37, 43, 52, 39, 40, 50, 43, 42, 37, 39, 39, 45, 40, 41, 50, 56, 37, 48, 35, 39, 48, 45, 39, 47, 55, 35, 39, 51, 50, 42, 45, 43, -14, 56, 59, 51, 35, 55, 56, 41, 52, 35, 39, 51, 50, 42, 45, 54, 49, 37, 56, 45, 51, 50, 35, 38, 51, 40, 61, -23, -20, -10, -1, -25, -6, -2, -25, -8, -12, -23, 1, -22, -23, -21, -13, -25, -21, -6, -23, -5, -16, -25, -18, -23, -12, -12, -22, -23, -21, -13, 72, 74, 74, 80, 75, 76, 85, 91, 72, 83, 70, 74, 83, 80, 74, 82, 90, 70, 74, 86, 85, 77, 80, 78, 21, 91, 94, 86, 70, 90, 91, 76, 87, 70, 74, 86, 85, 77, 80, 89, 84, 70, 73, 92, 91, 91, 86, 85, 70, 91, 76, 95, 91, -3, 0, 10, 19, -5, 10, -3, 16, 5, 18, 1, -5, -1, -3, 14, 11, 17, 15, 1, 8, -5, -1, 11, 9, 12, -3, -1, 16, -5, 16, 4, 14, 1, 15, 4, 11, 8, 0, 42, 86, 85, 91, 80, 85, 92, 76, 19, 22, 32, 41, 17, 31, 33, 22, 39, 30, 23, 37, 17, 32, 23, 38, 41, 33, 36, 29, 27, 32, 25, 17, 23, 32, 19, 20, 30, 23, 22, 17, 24, 33, 36, 17, 32, 33, 32, 17, 19, 22, 17, 36, 23, 35, 39, 23, 37, 38, 26, 29, 39, 48, 24, 46, 44, 30, 24, 28, 26, 28, 33, 30, 29, 24, 30, 49, 30, 28, 46, 45, 40, 43, 24, 34, 39, 24, 28, 26, 28, 33, 30, 24, 38, 26, 39, 26, 32, 30, 43, -38, -35, -25, -16, -40, -34, -25, -38, -37, -27, -34, -40, -30, -38, -37, 24, 27, 37, 46, 22, 24, 27, 27, 32, 43, 32, 38, 37, 24, 35, 22, 35, 38, 30, 30, 32, 37, 30, 22, 44, 42, 28, 22, 43, 28, 36, 39, 22, 29, 32, 35, 28, 22, 29, 38, 41, 22, 41, 28, 46, 41, 32, 43, 28, -3, 0, 10, 19, -5, 9, 11, 0, 17, 8, 1, 15, -5, 10, 1, 16, 19, 11, 14, 7, 5, 10, 3, -5, 1, 10, -3, -2, 8, 1, 0, -5, 2, 11, 14, -5, -3, 0, -5, 14, 1, 13, 17, 1, 15, 16, 46, 49, 59, 68, 44, 63, 67, 44, 47, 66, 51, 51, 50, 63, 44, 48, 53, 50, 48, 56, 44, 50, 59, 46, 47, 57, 50, 49, -3, 0, 10, 19, -5, -3, 10, 0, 14, 11, 5, 0, -5, 10, 1, 16, 19, 11, 14, 7, -5, 0, 1, 2, -3, 17, 8, 16, -5, 14, 1, 16, 14, 5, 1, 15, -5, 10, 17, 9, -34, -31, -21, -12, -36, -14, -16, -30, -36, -32, -34, -32, -27, -30, -31, -36, -30, -11, -30, -32, -14, -15, -20, -17, -36, -29, -20, -17, -36, -21, -30, -15, -12, -20, -17, -24, 65, 68, 78, 87, 63, 65, 78, 68, 82, 79, 73, 68, 63, 85, 83, 69, 63, 67, 65, 67, 72, 69, 63, 77, 79, 68, 85, 76, 69, 63, 70, 79, 82, 63, 73, 77, 65, 71, 69, 83, -21, -20, -39, -37, -29, -41, 
        -20, -22, -39, -37, -35, -41, -21, -39, -27, -24, -28, -35, -41, -22, -39, -20, -35, 12, 15, 25, 34, 10, 33, 20, 16, 34, 12, 13, 20, 23, 20, 31, 36, 10, 14, 19, 16, 14, 22, 10, 12, 29, 16, 12, 10, 13, 12, 30, 16, 15, -5, -2, 8, 17, -7, 8, -1, 17, -7, 6, -5, 8, -2, 13, -3, -5, 10, -1, -7, -1, 8, -2, -3, -5, 12, -2, 75, 78, 88, 97, 73, 88, 75, 94, 83, 96, 79, 73, 94, 79, 87, 90, 86, 75, 94, 79, 93, 73, 92, 79, 78, 79, 93, 83, 81, 88, 48, 50, 50, 56, 51, 52, 61, 67, 48, 59, 46, 50, 59, 56, 50, 58, 66, 46, 50, 62, 61, 53, 56, 54, 9, 12, 22, 31, 7, 9, 22, 12, 26, 23, 17, 12, 7, 11, 23, 21, 24, 26, 13, 27, 27, 7, 17, 21, 9, 15, 13, 27, 7, 12, 29, 26, 17, 22, 15, 7, 12, 23, 31, 22, 20, 23, 9, 12, -7, -4, -4, 1, 12, 1, 7, 6, -7, 4, -9, -4, -3, -6, 13, -1, -9, 4, 7, -1, -1, 1, 6, -1, -9, 11, -7, 5, 8, 4, 1, 6, -1, -9, 8, -3, 10, -5, -3, 6, 12, -7, -1, -3, 8, 11, 21, 30, 6, 23, 25, 12, 6, 10, 8, 10, 15, 12, 6, 8, 19, 19, 6, 8, 26, 26, 12, 27, 26, -29, -27, -27, -21, -26, -25, -16, -10, -29, -18, -31, -27, -18, -21, -27, -19, -11, -31, -27, -15, -16, -24, -21, -23, -80, -10, -7, -15, -31, -11, -10, -25, -14, -31, -27, -15, -16, -24, -21, -12, -17, -29, -10, -21, -15, -16, -31, -10, -21, -10, -18, -25, 63, 66, 76, 85, 61, 64, 74, 77, 65, 73, 61, 65, 82, 63, 61, 64, 67, 68, 77, 80, 67, 61, 71, 75, 78, 80, 67, 81, 81, 71, 77, 76, -31, -28, -18, -9, -33, -18, -31, -12, -23, -10, -27, -33, -30, -31, -18, -18, -27, -14, -33, -12, -27, -19, -16, -20, -31, -12, -27, -13, -33, -14, -27, -28, -27, -13, -23, -25, -18, 8, 11, 21, 30, 6, 9, 12, 21, 10, 15, 20, 8, 25, 18, 6, 25, 12, 23, 22, 25, 27, 6, 16, 21, 27, 12, 25, 29, 8, 19, 6, 20, 26, 50, 53, 63, 72, 48, 69, 58, 62, 54, 48, 69, 64, 48, 72, 50, 58, 69, 48, 55, 64, 67, 48, 71, 58, 53, 54, 64, 48, 65, 61, 50, 74, 48, 62, 68, 46, 39, 34, 31, 34, 30, 29, 24, 37, 40, 32, 32, 34, 39, 32, 24, 34, 38, 38, 30, 29, 34, 26, 45, 30, 24, 29, 30, 37, 26, 50, 24, 38, 44, -17, -14, -4, 5, -19, 1, -10, -3, 3, -6, -14, -19, -15, -6, -13, -17, 0, -19, -12, -13, -17, 2, 3, 0, -13, -19, -15, -3, -4, -12, -9, -11, -19, -3, -4, -19, -15, 0, -17, 1, -10, -13, 1, -8, -5, 5, 14, -10, 10, -1, 6, 12, 3, -5, -10, 0, 5, 0, 11, -10, -3, 9, 6, 4, -10, -6, 6, 5, 11, -4, 5, 11, -10, 7, 9, 6, 13, 0, -5, -4, 9, 33, 36, 46, 55, 31, 54, 41, 36, 37, 47, 31, 41, 46, 52, 37, 50, 51, 52, 41, 52, 41, 33, 44, 31, 46, 37, 55, 31, 36, 37, 51, 41, 39, 46, 31, 34, 44, 53, 29, 51, 49, 35, 29, 36, 31, 51, 42, 50, 29, 50, 45, 42, 35, 48, 31, 44, 50, 29, 31, 46, 39, -39, 5, 4, 10, -1, 4, 11, -5, -43, 63, 66, 76, 85, 61, 63, 76, 66, 80, 77, 71, 66, 61, 83, 81, 67, 61, 65, 63, 65, 70, 67, 61, 75, 77, 66, 83, 74, 67, -25, -22, -12, -3, -27, -12, -21, -3, -27, -8, -21, -3, -25, -8, -22, -21, -22, -27, -4, -17, -22, -21, -11, -27, -22, -21, -7, -17, -19, -12, 27, 30, 40, 49, 25, 38, 41, 33, 25, 27, 30, 30, 35, 46, 35, 41, 40, 27, 38, 25, 38, 41, 33, 33, 35, 40, 33, 25, 45, 31, 45, 45, 35, 41, 40, 25, 31, 48, 31, 40, 46, 45, 25, 27, 38, 49, 27, 51, 45, 20, 23, 33, 42, 18, 24, 33, 20, 21, 31, 24, 18, 22, 28, 37, 22, 40, 31, 20, 37, 18, 35, 37, 34, 22, 24, 38, 38, 18, 21, 28, 33, 23, 28, 33, 26, 49, 79, 92, 81, 83, 90, 62, 65, 75, 84, 60, 62, 75, 65, 79, 76, 70, 65, 60, 75, 66, 81, 84, 76, 79, 72, 60, 65, 66, 67, 62, 82, 73, 81, 60, 79, 66, 62, 65, 60, 81, 70, 74, 66, 76, 82, 81, 60, 74, 80, 5, 8, 18, 27, 3, 5, 18, 8, 22, 19, 13, 8, 3, 18, 9, 24, 27, 19, 22, 15, 3, 8, 9, 6, 25, 11, 3, 9, 26, 9, 18, 24, 23, 3, 23, 5, 17, 20, 16, 13, 18, 11, 3, 22, 5, 24, 9, 5, 25, 24, 19, 22, 19, 24, 5, 24, 9, 3, 9, 18, 5, 6, 16, 9, 8, -31, -29, -34, -29, -32, -13, -32, -34, -21, -18, -26, -26, -24, -19, -26, -34, -21, -24, -20, -24, -13, -9, -6, 4, 13, -11, -5, 4, -6, -11, -7, -9, 8, -6, -11, -7, 2, 5, 9, -5, -11, -8, 11, 10, 10, 5, 4, -11, -6, -5, 2, -9, 15, -11, 10, -1, 3, -5, -11, 3, 9, 14, 17, 27, 36, 12, 18, 27, 14, 15, 25, 18, 12, 22, 27, 25, 22, 27, 18, 12, 37, 12, 28, 34, 33, 12, 28, 27, 12, 32, 17, 24, -42, -39, -29, -20, -44, -24, -35, -28, -22, -31, -39, -44, -24, -38, -29, -39, -44, -42, -27, -27, -44, -34, -29, -37, -28, -44, -34, -29, -44, -22, -24, -38, 
        -25, -44, -42, -36, -38, -29, -23, 37, 40, 50, 59, 35, 56, 45, 49, 41, 51, 57, 56, 35, 54, 41, 59, 37, 54, 40, 41, 40, 35, 58, 45, 40, 41, 51, 31, 61, 74, 3, 80, -4, 76, 61, 78, 79, 65, -4, 79, 61, 73, 76, 72, 69, 74, 67, 10, 14, 17, 27, 36, 12, 15, 25, 28, 16, 24, 12, 25, 28, 16, 24, 32, 16, 31, 18, 18, 27, 55, 58, 68, 77, 53, 55, 68, 58, 72, 69, 63, 58, 53, 67, 72, 57, 53, 63, 67, 70, 72, 59, 73, 73, 63, 69, 68, 53, 60, 69, 72, 53, 68, 55, 74, 63, 76, 59, 53, 76, 63, 58, 59, 69, 53, 55, 58, 73, -6, -3, 7, 16, -8, 14, 12, -2, -8, -1, 2, 5, -2, -8, 15, 2, -3, -2, 8, -8, -4, -6, -4, 1, -2, 11, 14, 24, 33, 9, 31, 29, 15, 9, 16, 12, -34, 11, 9, 19, 14, 45, 48, 58, 67, 43, 65, 58, 53, 61, 65, 49, 43, 48, 46, 43, 58, 45, 57, 49, 43, 60, 49, 62, 43, 60, 62, 59, 47, 49, 63, 63, 2, 5, 15, 24, 0, 19, 6, 18, 22, 6, 20, 21, 0, 7, 10, 19, 20, 21, 0, 2, 5, 0, 7, 19, 16, 14, 0, 14, 2, 10, 15, 0, 17, 19, 16, 4, 6, 20, 20, -21, -18, -8, 1, -23, -18, -17, -20, -1, -15, -23, -10, -7, -15, -15, -13, -8, -15, -23, -17, 0, -17, -8, -2, -23, -10, -13, -9, -13, -2, -13, -11, -11, -5, -10, -9, 0, 6, -13, -2, -15, -11, -2, -5, -11, -3, 5, -15, -11, 1, 0, -8, -5, -7, -64, 6, 9, 1, -15, 5, 6, -9, 2, -15, -11, -13, 0, -11, -9, -2, -15, -12, 7, 6, 6, 1, 0, -15, 6, -9, 10, 6, 79, 82, 92, 101, 77, 82, 83, 80, 99, 85, 77, 90, 93, 85, 77, 84, 87, 90, 83, 77, 97, 87, 104, 83, 77, 90, 87, 91, 87, 98, 77, 80, 103, 98, 83, 97, -42, -39, -29, -20, -44, -22, -24, -38, -44, -25, -34, -27, -27, -31, -38, -44, -42, -29, -34, -30, -42, -23, -34, -28, -29, -2, 0, 0, 6, 1, 2, 11, 17, -2, 9, -4, 0, 9, 6, 0, 8, 16, -4, 0, 12, 11, 3, 6, 4, -53, 17, 20, 12, -4, 16, 17, 2, 13, -4, 0, 12, 11, 3, 6, 15, 10, -2, 17, 6, 12, 11, 8, 11, 21, 30, 6, 11, 12, 9, 28, 14, 6, 19, 22, 14, 14, 16, 21, 14, -21, 70, 70, 70, -27, -15, -17, -80, -24, -29, -27, -25, -28, -15, -15, -19, -80, -29, -26, -11, -80, -56, -57, -61, -42, -41, -44, -57, -31, -59, -47, -48, -56, -53, -55, 21, 43, 49, -36, 51, 37, 40, 40, -36, 30, 33, -36, 48, 29, 39, 33, 42, -36, 48, 43, -36, 29, 42, 43, 48, 36, 33, 46, -36, 32, 33, 47, 48, 37, 42, 29, 48, 37, 43, 42, -22, 49, 52, 62, 71, 47, 68, 57, 61, 53, 47, 68, 63, 47, 71, 49, 57, 68, 47, 54, 63, 66, 47, 70, 57, 52, 53, 63, 47, 64, 66, 53, 64, 49, 66, 53, 52, 47, 61, 67, 31, 34, 44, 53, 29, 35, 44, 31, 32, 42, 35, 29, 53, 48, 45, 44, 37, 29, 31, 34, 29, 49, 50, 31, 50, 35, 49, 29, 33, 38, 35, 33, 41, 25, 28, 38, 47, 23, 33, 38, 44, 29, 42, 43, 44, 33, 44, 33, 25, 36, 23, 43, 41, 45, 25, 42, 29, 23, 47, 25, 44, 27, 32, 23, 25, 38, 28, 23, 26, 42, 39, 47, 43, 29, 23, 27, 44, 25, 30, 33, 43, 52, 28, 33, 44, 28, 43, 44, 49, 28, 47, 34, 41, 44, 30, 33, 28, 38, 43, 49, 34, 47, 48, 49, 38, 49, 38, 30, 41, 28, 30, 33, 30, 45, 49, 34, 47, -17, -14, -4, 5, -19, -15, 2, -17, -19, -5, -9, -4, -19, 1, -15, -17, -6, -13, -19, -17, -4, -9, -5, -17, 2, -9, -3, -4, -19, -2, -13, 0, -15, -13, -4, 2, -17, -11, -13, 61, 64, 74, 83, 59, 61, 63, 63, 65, 76, 80, 61, 62, 72, 65, 59, 79, 80, 61, 63, 71, 80, 78, 61, 63, 65, 59, 63, 75, 74, 80, 65, 84, 80, 59, 66, 69, 72, 80, 65, 78, 59, 79, 69, 86, 65, 39, 42, 52, 61, 37, 43, 52, 39, 40, 50, 43, 37, 54, 39, 45, 43, 37, 51, 43, 58, 39, 42, 39, 58, 39, 37, 39, 57, 37, 41, 58, 39, 32, 41, 38, 32, 40, 36, 50, 30, 47, 33, 28, 49, 38, 42, 34, 28, 42, 48, 7, 10, 20, 29, 5, 11, 20, 7, 8, 18, 11, 5, 15, 20, 18, 15, 20, 11, 5, 30, 5, 21, 27, 26, 5, 20, 21, 20, 5, 12, 27, 18, 18, 25, 9, 24, 11, 11, 20, 5, 21, 20, 5, 25, 10, 17, -27, -24, -14, -5, -29, -27, -14, -24, -10, -13, -19, -24, -29, -24, -19, -9, -27, -26, -16, -23, -29, -12, -16, -27, -3, -27, -26, -16, -23, -29, -12, -10, -23, -25, -27, -25, -20, -23, 75, 78, 88, 97, 73, 84, 88, 83, 94, 79, 93, 94, 73, 79, 88, 75, 76, 86, 79, 78, -22, -19, -9, 0, -24, -22, -9, -19, -5, -8, -14, -19, -24, -9, -18, -3, 0, -8, -5, -12, -24, -19, -18, -17, -22, -2, -11, -3, -24, -20, -8, -9, -9, -18, -20, -3, -14, -8, -9, -24, -3, -14, -10, -18, -8, -2, -3, -24, -10, -4, -10, -7, 3, 12, -12, -10, -7, -7, -2, 9, -2, 4, 3, -10, 1, -12, 1, 4, -4, -4, -2, 3, -4, -12, 7, -6, 9, 7, 14, -12, 1, -2, 2, -2, 9, -29, -26, 
        -26, -21, -10, -21, -15, -16, -29, -18, -31, -26, -25, -28, -9, -23, -31, -18, -15, -23, -23, -21, -16, -23, -31, -28, -18, -29, -27, -19, -31, -18, -21, -11, -10, -31, -14, -25, -12, -27, -25, -16, -10, -29, -23, -25, 13, 16, 26, 35, 11, 13, 26, 16, 30, 27, 21, 16, 11, 13, 24, 24, 27, 35, 11, 24, 27, 13, 16, 11, 16, 33, 30, 21, 26, 19, 11, 31, 20, 27, 35, 21, 26, 19, -8, -5, 5, 14, -10, 12, 10, -4, -10, -3, 0, 3, -4, -10, -6, -8, -6, -1, -4, -10, 13, -55, 11, 14, 24, 33, 9, 15, 24, 11, 12, 22, 15, 9, 23, 31, 22, 30, 19, 26, 28, 25, 13, 15, 29, 29, 9, 29, 31, 26, 26, 25, 28, 30, 0, 3, 13, 22, -2, 2, 19, 0, -2, 0, 13, 8, 12, 0, 19, 8, 14, 13, -2, 3, 4, 11, 0, 24, -2, 12, 18, -13, -10, -10, -5, 6, -5, 1, 0, -13, -2, -15, -10, -9, -12, 7, -7, -15, -2, 1, -7, -7, -5, 0, -7, -15, -12, -2, -13, -11, -3, -15, -2, -5, 5, 6, 55, 57, -44, -41, -31, -22, -46, -26, -37, -30, -22, -46, -42, -25, -44, -46, -36, -31, -46, -27, -23, -46, -29, -27, -40, -46, -40, -31, -41, -42, -44, -27, -41, -26, -27, -7, -8, -13, -10, -13, -8, -27, -8, -23, -29, -24, -19, -9, -27, -26, -16, -23, -24, 25, 28, 38, 47, 23, 29, 38, 25, 26, 36, 29, 23, 42, 25, 31, 29, 23, 43, 32, 25, 35, 29, 1, 4, 14, 23, -1, 16, 21, 18, 7, 5, -1, 15, 14, -1, -44, -47, -45, -1, 18, 5, 19, 16, 15, 14, 19, 5, 43, 46, 56, 65, 41, 54, 57, 49, 41, 43, 46, 46, 51, 62, 51, 57, 56, 43, 54, 41, 54, 57, 49, 49, 51, 56, 49, 41, 51, 56, 41, 55, 47, 55, 57, 60, 67, 41, 47, 64, 47, 56, 62, 61, 41, 54, 51, 55, 51, 62, 35, 38, 48, 57, 33, 39, 48, 35, 36, 46, 39, 33, 48, 39, 54, 57, 49, 52, 45, -7, -4, 6, 15, -9, 1, 6, 12, -3, 10, 11, 12, 1, 12, 1, -7, 4, -9, 6, -3, 15, -9, 1, 5, -7, -1, -3, -9, -4, -3, 11, 1, -1, 6, 57, 60, 70, 79, 55, 75, 64, 71, 77, 68, 60, 55, 57, 60, 60, 55, 61, 80, 76, 61, 70, 75, 65, 71, 70, 55, 76, 71, 55, 72, 68, 57, 81, 57, 58, 68, 61, 75, 40, 43, 53, 62, 38, 44, 53, 40, 41, 51, 44, 38, 48, 53, 59, 44, 57, 58, 59, 48, 59, 48, 40, 51, 38, 48, 52, 40, 46, 44, 38, 42, 51, 48, 42, 50, 58, -11, -8, 2, 11, -13, -6, -3, 0, -7, -13, 10, -3, -8, -7, 3, -13, -9, -11, -9, -4, -7, -13, 6, -7, 8, 6, 13, -13, 0, -3, 1, -3, 8, -7, -4, 6, 15, -9, 11, 0, 7, 13, 4, -4, -9, 1, 6, -5, 10, -3, 5, -3, 6, 12, -9, 10, -3, 12, 10, 17, -9, -5, 7, 13, 6, 12, -3, 10, -9, 7, 6, -9, -3, 5, 8, 12, 17, -9, 10, -3, 11, 8, 7, 6, 11, -3, -13, -10, 0, 9, -15, 7, 5, -9, -15, -8, -12, -58, -13, -15, -5, -10, -15, -8, -5, 4, 5, 6, 62, 65, 75, 84, 60, 66, 75, 62, 63, 73, 66, 60, 77, 62, 68, 66, 60, 70, 64, 76, 75, 60, 62, 80, 60, 64, 81, 62, 57, 60, 70, 79, 55, 75, 76, 57, 59, 67, 76, 74, 57, 59, 61, 55, 63, 74, 71, 77, 72, 65, 70, 63, 55, 61, 70, 57, 58, 68, 61, 60, 63, 66, 76, 85, 61, 70, 71, 66, 67, 61, 67, 80, 80, 77, 80, 61, 66, 71, 63, 74, 77, 69, 61, 68, 77, 80, 61, 63, 66, 61, 78, 80, 77, 65, 67, 81, 81, 80, 83, 93, 102, 78, 80, 93, 83, 97, 94, 88, 83, 78, 92, 84, 92, 94, 97, 104, 78, 94, 95, 99, -47, -44, -34, -25, -49, -29, -40, -33, -27, -36, -44, -49, -36, -33, -41, -49, -47, -29, -29, -43, -28, -49, -27, -30, -36, 4, 7, 17, 26, 2, 22, 11, 18, 24, 15, 7, 2, 22, 11, 18, 26, 2, 6, 21, 18, 22, 22, 2, 12, 17, 2, 16, 24, 15, 23, 12, 2, 4, 7, 2, 18, 19, 23, 2, 12, 17, 2, 7, 12, 4, 15, 18, 10, 47, 50, 60, 69, 45, 47, 60, 50, 64, 61, 55, 50, 45, 67, 65, 51, 45, 65, 66, 51, 47, 59, 55, 60, 53, 45, 55, 59, 47, 53, 51, 45, 50, 51, 49, 61, 50, 55, 60, 53, 51, 54, 64, 73, 49, 55, 64, 51, 52, 62, 55, 49, 66, 68, 55, 62, 65, 51, 54, -17, -30, -35, -34, -24, -40, -38, -25, -35, -40, -34, -25, -35, -36, -38, -21, -35, -40, -38, -18, -19, -24, -21, -24, -19, -38, -19, -34, -21, -18, -8, 1, -23, -17, -8, -21, -20, -10, -17, -23, -18, -17, -20, -1, -15, -23, -7, 0, -17, -4, -10, -21, 3, 43, 39, 44, 39, 43, 51, 43, 29, 35, 42, 31, 46, 49, 35, 34, 29, 50, 39, 43, 35, 29, 31, 36, 50, 35, 48, 29, 39, 43, 46, 48, 35, 49, 49, 39, 45, 44, 26, 29, 39, 48, 24, 37, 40, 32, 24, 26, 29, 29, 34, 45, 34, 40, 39, 26, 37, 24, 37, 40, 32, 32, 34, 39, 32, 24, 30, 47, 30, 39, 45, 44, 24, 37, 34, 38, 34, 45, 15, 8, 3, 0, 3, -1, -2, -7, 6, 9, 1, 1, 3, 8, 1, -7, -2, 3, 13, 10, -5, 14, -3, 2, -7, 3, 8, 14, -1, 12, 16, -5, 6, 
        -7, 13, -1, -3, 9, 8, -2, 13, 46, 39, 34, 31, 34, 30, 29, 24, 37, 40, 32, 32, 34, 39, 32, 24, 43, 30, 45, 43, 50, 24, 37, 34, 38, 34, 45, 37, 40, 50, 59, 35, 41, 50, 37, 38, 48, 41, 35, 55, 61, 50, 39, -5, -2, 8, 17, -7, -5, 8, -2, 12, 9, 3, -2, -7, 8, -1, 14, 17, 9, 12, 5, -7, -2, -1, 0, -5, 15, 6, 14, -7, 14, 2, 12, 9, 14, 14, 6, -1, -7, 14, 3, 7, -1, 9, 15, 14, -7, 7, 13, 15, 18, 28, 37, 13, 35, 33, 19, 13, 33, 22, 29, 32, 34, 13, 19, 28, 36, 13, 18, 15, 34, 15, 13, 20, 29, 32, 13, 15, 18, 18, 23, 34, 23, 29, 28, 15, 26, 13, 26, 29, 21, 21, 23, 28, 21, 73, 76, 86, 95, 71, 92, 87, 87, 84, 74, 73, 90, 71, 86, 77, 95, 71, 76, 77, 91, 81, 79, 86, 33, 36, 46, 55, 31, 35, 47, 46, 38, 41, 39, 31, 51, 37, 46, 36, 31, 38, 34, 44, 47, 39, 41, 46, 31, 33, 51, 41, 36, 14, 17, 27, 36, 12, 18, 27, 14, 15, 25, 18, 12, 14, 34, 33, 28, 12, 17, 18, 32, 33, 31, 28, 38, 12, 25, 18, 14, 24, 32, -38, -35, -25, -16, -40, -20, -34, -25, -35, -40, -38, -35, -35, -30, -19, -30, -24, -25, -38, -27, -40, -35, -34, -37, -18, -32, -40, -27, -24, -32, -32, -30, -25, -32, -40, -20, -19, -38, -36, -28, -19, -21, -38, -36, -34, 3, 6, 16, 25, 1, 15, 3, 26, 1, 3, 6, 6, 11, 22, 11, 17, 16, 3, 14, 1, 20, 24, 1, 3, 6, 21, 1, 22, 17, 1, 21, 10, 17, 25, 13, 16, 26, 35, 11, 33, 31, 17, 30, 11, 13, 19, 17, 26, 32, 11, 30, 17, 18, 30, 17, 31, 20, 11, 32, 21, 25, 17, 11, 25, 31, -2, 5, -4, -4, 33, 36, 46, 55, 31, 51, 40, 47, 53, 44, 36, 31, 41, 46, 41, 52, 31, 47, 46, 31, 35, 44, 33, 51, 51, 31, 44, 47, 33, 36, 41, 46, 39};
    }

    static {
        A0h();
        A03 = K1.class.getSimpleName();
    }

    private K1(Context context) {
        this.A00 = context.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A0a(2446, 31, 18), context), 0);
    }

    public static float A00(Context context) {
        return A0Z(context).A24(A0a(2674, 39, 30), 0.98f);
    }

    public static int A01(Context context) {
        return A0Z(context).A25(A0a(3927, 40, 73), 10);
    }

    public static int A02(Context context) {
        return A0Z(context).A25(A0a(3299, 50, 90), 50);
    }

    public static int A03(Context context) {
        return A0Z(context).A25(A0a(2963, 35, 37), 1);
    }

    public static int A04(Context context) {
        return A0Z(context).A25(A0a(28, 33, 112), 100);
    }

    public static int A05(Context context) {
        return A0U(context, A0a(2998, 46, 18), 0);
    }

    public static int A06(Context context) {
        return A0U(context, A0a(1174, 44, 40), 0);
    }

    public static int A07(Context context) {
        return A0Z(context).A25(A0a(1876, 21, 15), 10);
    }

    public static int A08(Context context) {
        return A0Z(context).A25(A0a(1364, 33, 55), 0);
    }

    public static int A09(Context context) {
        return A0Z(context).A25(A0a(3136, 27, 47), -1);
    }

    public static int A0A(Context context) {
        int iA25 = 0;
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA25 = 1;
                    c = 3;
                    break;
                case 3:
                    return iA25;
                case 4:
                    context = context;
                    iA25 = A0Z(context).A25(A0a(281, 45, 119), 0);
                    c = 3;
                    break;
            }
        }
    }

    public static int A0B(Context context) {
        return A0Z(context).A25(A0a(2791, 18, 77), 0);
    }

    public static int A0C(Context context) {
        return A0Z(context).A25(A0a(2317, 36, 126), 10485760);
    }

    public static int A0D(Context context) {
        return A0Z(context).A25(A0a(2235, 30, 26), A0S(context));
    }

    public static int A0E(Context context) {
        return A0Z(context).A25(A0a(2913, 50, 25), 30000);
    }

    public static int A0F(Context context) {
        return A0Z(context).A25(A0a(878, 40, 44), 3);
    }

    public static int A0G(Context context) {
        return A0Z(context).A25(A0a(1767, 44, 109), 8000);
    }

    public static int A0H(Context context) {
        return A0Z(context).A25(A0a(4051, 48, 42), 100);
    }

    public static int A0I(Context context) {
        return A0Z(context).A25(A0a(198, 39, 21), 60000);
    }

    public static int A0J(Context context) {
        return A0Z(context).A25(A0a(3477, 33, 36), 3);
    }

    public static int A0K(Context context) {
        return A0Z(context).A25(A0a(603, 38, 44), 225);
    }

    public static int A0L(Context context) {
        return A0Z(context).A25(A0a(4272, 34, 50), 3);
    }

    public static int A0M(Context context) {
        return A0Z(context).A25(A0a(3890, 37, 78), -1);
    }

    public static int A0N(Context context) {
        int iA25 = 0;
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iA25 = 1;
                    c = 3;
                    break;
                case 3:
                    return iA25;
                case 4:
                    context = context;
                    iA25 = A0Z(context).A25(A0a(1811, 47, 52), 0);
                    c = 3;
                    break;
            }
        }
    }

    public static int A0O(Context context) {
        return A0Z(context).A25(A0a(2713, 46, 108), -1);
    }

    public static int A0P(Context context) {
        return A0Z(context).A25(A0a(994, 23, 8), 0);
    }

    public static int A0Q(Context context) {
        return A0Z(context).A25(A0a(1397, 35, 97), 1000);
    }

    public static int A0R(Context context) {
        return A0Z(context).A25(A0a(2518, 39, 96), 3000);
    }

    public static int A0S(Context context) {
        return A0Z(context).A25(A0a(387, 27, 113), -1);
    }

    public static int A0T(Context context) {
        return A0Z(context).A25(A0a(4008, 27, 73), 20);
    }

    private static int A0U(Context context, String str, int i) {
        int value = A0Z(context).A25(str, i);
        char c = value >= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (value >= 101) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return value;
                case 4:
                    value = i;
                    c = 3;
                    break;
            }
        }
    }

    public static long A0V(Context context) {
        return A0Z(context).A26(A0a(1897, 40, 38), 0L);
    }

    public static long A0W(Context context) {
        return A0Z(context).A25(A0a(3967, 41, 42), 300) * 1000;
    }

    public static long A0X(Context context) {
        return A0Z(context).A26(A0a(1432, 34, 73), 500L);
    }

    public static long A0Y(Context context) {
        return A0Z(context).A26(A0a(4306, 31, 60), -1L);
    }

    public static synchronized K1 A0Z(Context context) {
        if (A01 == null) {
            A01 = new K1(context);
        }
        return A01;
    }

    @Nullable
    public static String A0b(Context context) {
        return A0Z(context).A27(A0a(0, 28, 16), A0a(2443, 3, 95));
    }

    @Nullable
    public static String A0c(Context context) {
        return A0Z(context).A27(A0a(2265, 52, 34), A0a(1761, 6, 126));
    }

    @Nullable
    public static String A0d(Context context) {
        return A0Z(context).A27(A0a(468, 51, 84), A0a(2477, 41, 76));
    }

    @Nullable
    public static String A0e(Context context) {
        return A0Z(context).A27(A0a(550, 53, 119), A0a(641, 8, 119));
    }

    @Nullable
    public static String A0f(Context context) {
        return A0Z(context).A27(A0a(1243, 52, 18), A0a(1608, 9, 38));
    }

    public static HashMap<String, Integer> A0g(Context context) throws JSONException, NumberFormatException {
        String str = null;
        String sampling = null;
        String[] strArrSplit = null;
        String strA27 = A0Z(context).A27(A0a(3163, 35, 34), A0a(3198, 2, 108));
        HashMap<String, Integer> map = new HashMap<>();
        JSONArray jSONArray = new JSONArray(strA27);
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    jSONArray = jSONArray;
                    int i3 = jSONArray.length();
                    if (i >= i3) {
                        i2 = 11;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    jSONArray = jSONArray;
                    sampling = jSONArray.optString(i);
                    if (!TextUtils.isEmpty(sampling)) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 9;
                        break;
                    }
                case 4:
                    sampling = sampling;
                    if (!sampling.contains(A0a(2442, 1, 61))) {
                        i2 = 8;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 5:
                    sampling = sampling;
                    String eventConfig = A0a(2442, 1, 61);
                    strArrSplit = sampling.split(eventConfig);
                    str = strArrSplit[1];
                    i2 = 6;
                    break;
                case 6:
                    try {
                        str = str;
                        map.put(strArrSplit[0], Integer.valueOf(Integer.parseInt(str)));
                        i2 = 9;
                        break;
                    } catch (NumberFormatException unused) {
                        throw new JSONException(A0a(2034, 21, 108));
                    }
                case 8:
                    map = map;
                    sampling = sampling;
                    map.put(sampling, -1);
                    i2 = 9;
                    break;
                case 9:
                    i++;
                    i2 = 2;
                    break;
                case 11:
                    return map;
            }
        }
    }

    public static void A0i(Context context) {
        A0Z(context).A00.edit().clear().commit();
    }

    private void A0j(@Nullable String str, String str2) throws JSONException {
        K1 k1 = this;
        JSONObject jSONObject = null;
        String str3 = null;
        String next = null;
        Iterator<String> itKeys = null;
        SharedPreferences.Editor editorEdit = null;
        char c = str != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!str.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    str = str;
                    if (!str.equals(A0a(3198, 2, 108))) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    k1 = k1;
                    str = str;
                    editorEdit = k1.A00.edit();
                    jSONObject = new JSONObject(str);
                    itKeys = jSONObject.keys();
                    c = 6;
                    break;
                case 6:
                    itKeys = itKeys;
                    if (!itKeys.hasNext()) {
                        c = '\f';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    itKeys = itKeys;
                    next = itKeys.next();
                    if (!next.equals(A0a(RtcEngineEvent.EvtType.EVT_API_CALL_EXECUTED, 24, 95))) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    k1 = k1;
                    jSONObject = jSONObject;
                    next = next;
                    k1.A0j(jSONObject.getString(next), next);
                    c = 6;
                    break;
                case '\t':
                    str2 = str2;
                    next = next;
                    str3 = next;
                    if (str2 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    str2 = str2;
                    str3 = str2 + A0a(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 1, 104) + str3;
                    c = 11;
                    break;
                case 11:
                    editorEdit = editorEdit;
                    jSONObject = jSONObject;
                    next = next;
                    str3 = str3;
                    editorEdit.putString(str3, jSONObject.getString(next));
                    c = 6;
                    break;
                case '\f':
                    editorEdit = editorEdit;
                    editorEdit.apply();
                    c = 4;
                    break;
            }
        }
    }

    public static boolean A0k() {
        boolean zA29 = false;
        Context contextA00 = IF.A00();
        char c = contextA00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    contextA00 = contextA00;
                    zA29 = A0Z(contextA00).A29(A0a(443, 25, 86), true);
                    c = 3;
                    break;
                case 3:
                    return zA29;
                case 4:
                    zA29 = false;
                    c = 3;
                    break;
            }
        }
    }

    public static boolean A0l(Context context) {
        return A0Z(context).A29(A0a(755, 49, 71), true);
    }

    public static boolean A0m(Context context) {
        return A0Z(context).A27(A0a(3837, 28, 9), A0a(3232, 19, 20)).equals(A0a(1858, 18, 52));
    }

    public static boolean A0n(Context context) {
        return A0Z(context).A29(A0a(3044, 38, 60), false);
    }

    public static boolean A0o(Context context) {
        return A0Z(context).A29(A0a(1130, 44, 56), true);
    }

    public static boolean A0p(Context context) {
        return A0Z(context).A29(A0a(2635, 39, 77), true);
    }

    public static boolean A0q(Context context) {
        return A0Z(context).A29(A0a(4197, 30, 61), true);
    }

    public static boolean A0r(Context context) {
        return A0Z(context).A29(A0a(1725, 36, 67), true);
    }

    public static boolean A0s(Context context) {
        return A0Z(context).A29(A0a(3440, 37, 87), false);
    }

    public static boolean A0t(Context context) {
        return A0Z(context).A29(A0a(3104, 32, 58), false);
    }

    public static boolean A0u(Context context) {
        return A0Z(context).A29(A0a(1327, 37, 16), false);
    }

    public static boolean A0v(Context context) {
        return A0Z(context).A29(A0a(1076, 30, 122), false);
    }

    public static boolean A0w(Context context) {
        return A0Z(context).A29(A0a(3585, 28, 109), false);
    }

    public static boolean A0x(Context context) {
        return A0Z(context).A29(A0a(2759, 32, 86), false);
    }

    public static boolean A0y(Context context) {
        return A0Z(context).A29(A0a(2557, 33, 78), true);
    }

    public static boolean A0z(Context context) {
        return A0Z(context).A29(A0a(3645, 37, 110), true);
    }

    public static boolean A10(Context context) {
        return A0Z(context).A29(A0a(362, 25, 30), false);
    }

    public static boolean A11(Context context) {
        return A0Z(context).A29(A0a(2424, 18, 55), false);
    }

    public static boolean A12(Context context) {
        boolean z = false;
        char c = Build.VERSION.SDK_INT >= 18 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    z = false;
                    if (!A0Z(context).A29(A0a(3865, 25, 26), false)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
            }
        }
    }

    public static boolean A13(Context context) {
        boolean z = false;
        char c = Build.VERSION.SDK_INT >= 19 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    z = false;
                    if (!A0Z(context).A29(A0a(740, 15, 9), false)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
            }
        }
    }

    public static boolean A14(Context context) {
        return A0Z(context).A29(A0a(2893, 20, 122), false);
    }

    public static boolean A15(Context context) {
        return A0Z(context).A29(A0a(3682, 23, 127), false);
    }

    public static boolean A16(Context context) {
        return A0Z(context).A29(A0a(804, 46, 44), false);
    }

    public static boolean A17(Context context) {
        return A0Z(context).A29(A0a(649, 50, 66), false);
    }

    public static boolean A18(Context context) {
        return A0Z(context).A29(A0a(157, 41, 29), false);
    }

    public static boolean A19(Context context) {
        return A0Z(context).A29(A0a(3251, 22, 72), false);
    }

    public static boolean A1A(Context context) {
        return A0Z(context).A29(A0a(850, 28, 93), true);
    }

    public static boolean A1B(Context context) {
        return A0Z(context).A29(A0a(519, 31, 24), true);
    }

    public static boolean A1C(Context context) {
        return A0Z(context).A29(A0a(3613, 32, 104), false);
    }

    public static boolean A1D(Context context) {
        return A0Z(context).A29(A0a(2378, 46, 45), false);
    }

    public static boolean A1E(Context context) {
        return A0Z(context).A29(A0a(1676, 49, 74), true);
    }

    public static boolean A1F(Context context) {
        return A0Z(context).A29(A0a(3349, 19, 82), true);
    }

    public static boolean A1G(Context context) {
        return A0Z(context).A29(A0a(3818, 19, 98), true);
    }

    public static boolean A1H(Context context) {
        return A0Z(context).A29(A0a(2196, 39, 49), true);
    }

    public static boolean A1I(Context context) {
        return A0Z(context).A29(A0a(4227, 45, 9), false);
    }

    public static boolean A1J(Context context) {
        return A0Z(context).A29(A0a(3402, 38, 104), true);
    }

    public static boolean A1K(Context context) {
        return A0Z(context).A29(A0a(1295, 32, 110), false);
    }

    public static boolean A1L(Context context) {
        return A0Z(context).A29(A0a(2055, 21, 61), false);
    }

    public static boolean A1M(Context context) {
        return A0Z(context).A29(A0a(1466, 43, 30), true);
    }

    public static boolean A1N(Context context) {
        return A0Z(context).A29(A0a(2855, 38, 20), false);
    }

    public static boolean A1O(Context context) {
        return A0Z(context).A29(A0a(326, 36, 17), false);
    }

    public static boolean A1P(Context context) {
        return A0Z(context).A29(A0a(61, 30, 59), true);
    }

    public static boolean A1Q(Context context) {
        return A0Z(context).A29(A0a(414, 29, 45), false);
    }

    public static boolean A1R(Context context) {
        return A0Z(context).A29(A0a(2076, 48, 102), false);
    }

    public static boolean A1S(Context context) {
        return A0Z(context).A29(A0a(91, 42, 10), false);
    }

    public static boolean A1T(Context context) {
        return A0Z(context).A29(A0a(3510, 53, 40), false);
    }

    public static boolean A1U(Context context) {
        return A0Z(context).A29(A0a(1509, 38, 39), true);
    }

    public static boolean A1V(Context context) {
        return A0Z(context).A29(A0a(4341, 33, 80), false);
    }

    public static boolean A1W(Context context) {
        return A0Z(context).A29(A0a(3705, 25, 0), false);
    }

    public static boolean A1X(Context context) {
        return A0Z(context).A29(A0a(237, 44, 29), false);
    }

    public static boolean A1Y(Context context) {
        return A0Z(context).A29(A0a(1218, 25, 55), true);
    }

    public static boolean A1Z(Context context) {
        return A0Z(context).A29(A0a(3273, 26, 48), false);
    }

    public static boolean A1a(Context context) {
        return A0Z(context).A29(A0a(1968, 39, 5), true);
    }

    public static boolean A1b(Context context) {
        return A0Z(context).A29(A0a(4168, 29, 80), false);
    }

    public static boolean A1c(Context context) {
        return A0Z(context).A29(A0a(3200, 32, 3), false);
    }

    public static boolean A1d(Context context) {
        return A0Z(context).A29(A0a(3730, 48, 51), true);
    }

    public static boolean A1e(Context context) {
        return A0Z(context).A29(A0a(133, 23, 34), true);
    }

    public static boolean A1f(Context context) {
        return A0Z(context).A29(A0a(2007, 27, 84), false);
    }

    public static boolean A1g(Context context) {
        return A0Z(context).A29(A0a(1017, 33, 59), false);
    }

    public static boolean A1h(Context context) {
        return A0Z(context).A29(A0a(1937, 31, 61), false);
    }

    public static boolean A1i(Context context) {
        return A0Z(context).A29(A0a(2809, 46, 54), false);
    }

    public static boolean A1j(Context context) {
        return A0Z(context).A29(A0a(3368, 34, 40), false);
    }

    public static boolean A1k(Context context) {
        return A0Z(context).A29(A0a(4145, 23, 120), false);
    }

    public static boolean A1l(Context context) {
        return A0Z(context).A29(A0a(1547, 34, 80), false);
    }

    public static boolean A1m(Context context) {
        return A0Z(context).A29(A0a(2353, 25, 5), true);
    }

    public static boolean A1n(Context context) {
        return A0Z(context).A29(A0a(2590, 45, 72), false);
    }

    public static boolean A1o(Context context) {
        return A0Z(context).A29(A0a(2165, 31, 92), false);
    }

    public static boolean A1p(Context context) {
        return A0Z(context).A29(A0a(4035, 16, 84), true);
    }

    public static boolean A1q(Context context) {
        return A0Z(context).A29(A0a(1617, 29, 110), false);
    }

    public static boolean A1r(Context context) {
        return A0Z(context).A29(A0a(954, 40, 112), false);
    }

    public static boolean A1s(Context context) {
        return A0Z(context).A29(A0a(918, 36, 13), false);
    }

    public static boolean A1t(Context context) {
        return A0Z(context).A29(A0a(699, 41, 73), true);
    }

    public static boolean A1u(Context context) {
        return A0Z(context).A29(A0a(1581, 27, 78), true);
    }

    public static boolean A1v(Context context) {
        return A0Z(context).A29(A0a(2149, 16, 58), true);
    }

    public static boolean A1w(Context context) {
        return A0Z(context).A29(A0a(3563, 22, 34), false);
    }

    public static boolean A1x(Context context) {
        return A0Z(context).A29(A0a(2124, 25, 41), true);
    }

    public static boolean A1y(Context context) {
        return A0Z(context).A29(A0a(3082, 22, 39), false);
    }

    public static boolean A1z(Context context) {
        return A0Z(context).A29(A0a(1050, 26, 42), true);
    }

    public static boolean A20(Context context) {
        return A0Z(context).A29(A0a(1646, 30, 22), false);
    }

    public static boolean A21(Context context) {
        return A0Z(context).A29(A0a(FragmentTransaction.TRANSIT_FRAGMENT_FADE, 46, 62), true);
    }

    public static boolean A22(Context context) {
        return A0Z(context).A29(A0a(3778, 40, 94), true);
    }

    public final double A23(String str, double d) {
        String string = this.A00.getString(str, String.valueOf(d));
        try {
            return string.equals(A0a(4337, 4, 32)) ? d : Double.valueOf(string).doubleValue();
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    public final float A24(String str, float f) {
        String string = this.A00.getString(str, String.valueOf(f));
        try {
            return string.equals(A0a(4337, 4, 32)) ? f : Float.valueOf(string).floatValue();
        } catch (NumberFormatException unused) {
            return f;
        }
    }

    public final int A25(String str, int i) {
        String string = this.A00.getString(str, String.valueOf(i));
        try {
            return string.equals(A0a(4337, 4, 32)) ? i : Integer.valueOf(string).intValue();
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public final long A26(String str, long j) {
        String string = this.A00.getString(str, String.valueOf(j));
        try {
            return string.equals(A0a(4337, 4, 32)) ? j : Long.valueOf(string).longValue();
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    @Nullable
    public final String A27(String str, String str2) {
        String string = this.A00.getString(str, str2);
        char c = string != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    string = string;
                    if (!string.equals(A0a(4337, 4, 32))) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str2 = str2;
                    string = str2;
                    c = 4;
                    break;
                case 4:
                    return string;
            }
        }
    }

    public final void A28(@Nullable String str) throws JSONException {
        A0j(str, null);
    }

    public final boolean A29(String str, boolean z) {
        String string = this.A00.getString(str, String.valueOf(z));
        return string.equals(A0a(4337, 4, 32)) ? z : Boolean.valueOf(string).booleanValue();
    }
}
