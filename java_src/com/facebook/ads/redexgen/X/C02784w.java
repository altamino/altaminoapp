package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.C;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4w, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02784w {
    private static C02784w A05;
    private static byte[] A06;
    private static final Object A07;
    private final Context A00;
    private final Handler A01;
    private final HashMap<BroadcastReceiver, ArrayList<C02774v>> A04 = new HashMap<>();
    private final HashMap<String, ArrayList<C02774v>> A03 = new HashMap<>();
    private final ArrayList<C02764u> A02 = new ArrayList<>();

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 7);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A06 = new byte[]{35, 35, 69, 106, 111, 119, 102, 113, 35, 103, 106, 103, 35, 109, 108, 119, 35, 110, 98, 119, 96, 107, 57, 35, 29, 42, 60, 32, 35, 57, 38, 33, 40, 111, 59, 54, 63, 42, 111, 92, 81, 88, 77, 103, 101, 114, 111, 105, 104, 11, 14, 27, 14, 29, 63, 40, 53, 51, 50, 124, 48, 53, 47, 40, 102, 124, 39, 39, 65, 110, 107, 115, 98, 117, 39, 106, 102, 115, 100, 111, 98, 99, 38, 39, 39, 106, 102, 115, 100, 111, 58, 55, 127, 64, 91, 94, 91, 90, 66, 91, 21, 71, 80, 84, 70, 90, 91, 46, 13, 1, 3, 14, 32, 16, 13, 3, 6, 1, 3, 17, 22, 47, 3, 12, 3, 5, 7, 16, 58, 22, 3, 20, 31, 30, 25, 16, 87, 22, 16, 22, 30, 25, 4, 3, 87, 17, 30, 27, 3, 18, 5, 87, 40, 123, 107, 96, 109, 101, 109, 40, 92, 94, 75, 90, 88, 80, 77, 70, 55, 120, 113, 55, 126, 121, 99, 114, 121, 99, 55};
    }

    static {
        A03();
        A07 = new Object();
    }

    private C02784w(Context context) {
        this.A00 = context;
        final Looper mainLooper = context.getMainLooper();
        this.A01 = new Handler(mainLooper) { // from class: com.facebook.ads.redexgen.X.4t
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                char c;
                HandlerC02754t handlerC02754t = this;
                switch (message.what) {
                    case 1:
                        c = 4;
                        break;
                    default:
                        c = 2;
                        break;
                }
                while (true) {
                    switch (c) {
                        case 2:
                            handlerC02754t = handlerC02754t;
                            message = message;
                            super.handleMessage(message);
                            c = 3;
                            break;
                        case 3:
                            return;
                        case 4:
                            handlerC02754t = handlerC02754t;
                            handlerC02754t.A00.A02();
                            c = 3;
                            break;
                    }
                }
            }
        };
    }

    public static C02784w A00(Context context) {
        C02784w c02784w;
        synchronized (A07) {
            if (A05 == null) {
                A05 = new C02784w(context.getApplicationContext());
            }
            c02784w = A05;
        }
        return c02784w;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Incorrect condition in loop: B:12:0x001c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A02() {
        /*
            r8 = this;
        L0:
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<com.facebook.ads.redexgen.X.4v>> r1 = r8.A04
            monitor-enter(r1)
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r8.A02     // Catch: java.lang.Throwable -> L45
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L45
            if (r0 > 0) goto Ld
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L45
            goto L44
        Ld:
            com.facebook.ads.redexgen.X.4u[] r7 = new com.facebook.ads.redexgen.X.C02764u[r0]     // Catch: java.lang.Throwable -> L45
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r8.A02     // Catch: java.lang.Throwable -> L45
            r0.toArray(r7)     // Catch: java.lang.Throwable -> L45
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r8.A02     // Catch: java.lang.Throwable -> L45
            r0.clear()     // Catch: java.lang.Throwable -> L45
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L45
            r6 = 0
        L1b:
            int r0 = r7.length
            if (r6 >= r0) goto L0
            r5 = r7[r6]
            java.util.ArrayList<com.facebook.ads.redexgen.X.4v> r0 = r5.A01
            int r4 = r0.size()
            r3 = 0
        L27:
            if (r3 >= r4) goto L41
            java.util.ArrayList<com.facebook.ads.redexgen.X.4v> r0 = r5.A01
            java.lang.Object r1 = r0.get(r3)
            com.facebook.ads.redexgen.X.4v r1 = (com.facebook.ads.redexgen.X.C02774v) r1
            boolean r0 = r1.A01
            if (r0 != 0) goto L3e
            android.content.BroadcastReceiver r2 = r1.A02
            android.content.Context r1 = r8.A00
            android.content.Intent r0 = r5.A00
            r2.onReceive(r1, r0)
        L3e:
            int r3 = r3 + 1
            goto L27
        L41:
            int r6 = r6 + 1
            goto L1b
        L44:
            return
        L45:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L45
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02784w.A02():void");
    }

    /* JADX WARN: Incorrect condition in loop: B:12:0x0027 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A05(android.content.BroadcastReceiver r11) {
        /*
            r10 = this;
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<com.facebook.ads.redexgen.X.4v>> r8 = r10.A04
            monitor-enter(r8)
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<com.facebook.ads.redexgen.X.4v>> r0 = r10.A04     // Catch: java.lang.Throwable -> L67
            java.lang.Object r9 = r0.remove(r11)     // Catch: java.lang.Throwable -> L67
            java.util.ArrayList r9 = (java.util.ArrayList) r9     // Catch: java.lang.Throwable -> L67
            if (r9 != 0) goto Lf
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L67
            goto L66
        Lf:
            int r0 = r9.size()     // Catch: java.lang.Throwable -> L67
            int r7 = r0 + (-1)
        L15:
            if (r7 < 0) goto L65
            java.lang.Object r6 = r9.get(r7)     // Catch: java.lang.Throwable -> L67
            com.facebook.ads.redexgen.X.4v r6 = (com.facebook.ads.redexgen.X.C02774v) r6     // Catch: java.lang.Throwable -> L67
            r0 = 1
            r6.A01 = r0     // Catch: java.lang.Throwable -> L67
            r5 = 0
        L21:
            android.content.IntentFilter r0 = r6.A03     // Catch: java.lang.Throwable -> L67
            int r0 = r0.countActions()     // Catch: java.lang.Throwable -> L67
            if (r5 >= r0) goto L62
            android.content.IntentFilter r0 = r6.A03     // Catch: java.lang.Throwable -> L67
            java.lang.String r4 = r0.getAction(r5)     // Catch: java.lang.Throwable -> L67
            java.util.HashMap<java.lang.String, java.util.ArrayList<com.facebook.ads.redexgen.X.4v>> r0 = r10.A03     // Catch: java.lang.Throwable -> L67
            java.lang.Object r3 = r0.get(r4)     // Catch: java.lang.Throwable -> L67
            java.util.ArrayList r3 = (java.util.ArrayList) r3     // Catch: java.lang.Throwable -> L67
            if (r3 == 0) goto L5f
            int r0 = r3.size()     // Catch: java.lang.Throwable -> L67
            int r2 = r0 + (-1)
        L3f:
            if (r2 < 0) goto L54
            java.lang.Object r1 = r3.get(r2)     // Catch: java.lang.Throwable -> L67
            com.facebook.ads.redexgen.X.4v r1 = (com.facebook.ads.redexgen.X.C02774v) r1     // Catch: java.lang.Throwable -> L67
            android.content.BroadcastReceiver r0 = r1.A02     // Catch: java.lang.Throwable -> L67
            if (r0 != r11) goto L51
            r0 = 1
            r1.A01 = r0     // Catch: java.lang.Throwable -> L67
            r3.remove(r2)     // Catch: java.lang.Throwable -> L67
        L51:
            int r2 = r2 + (-1)
            goto L3f
        L54:
            int r0 = r3.size()     // Catch: java.lang.Throwable -> L67
            if (r0 > 0) goto L5f
            java.util.HashMap<java.lang.String, java.util.ArrayList<com.facebook.ads.redexgen.X.4v>> r0 = r10.A03     // Catch: java.lang.Throwable -> L67
            r0.remove(r4)     // Catch: java.lang.Throwable -> L67
        L5f:
            int r5 = r5 + 1
            goto L21
        L62:
            int r7 = r7 + (-1)
            goto L15
        L65:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L67
        L66:
            return
        L67:
            r0 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L67
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02784w.A05(android.content.BroadcastReceiver):void");
    }

    public final void A06(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.A04) {
            C02774v c02774v = new C02774v(intentFilter, broadcastReceiver);
            ArrayList<C02774v> arrayList = this.A04.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.A04.put(broadcastReceiver, arrayList);
            }
            arrayList.add(c02774v);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C02774v> arrayList2 = this.A03.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.A03.put(action, arrayList2);
                }
                arrayList2.add(c02774v);
            }
        }
    }

    public final boolean A07(Intent intent) {
        String strA01;
        synchronized (this.A04) {
            String scheme = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.A00.getContentResolver());
            Uri data = intent.getData();
            String scheme2 = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                String str = A01(24, 15, 72) + strResolveTypeIfNeeded + A01(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 8, 15) + scheme2 + A01(168, 11, 16) + intent;
            }
            ArrayList<C02774v> arrayList = this.A03.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    String str2 = A01(53, 13, 91) + arrayList;
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    C02774v c02774v = arrayList.get(i);
                    if (z) {
                        String str3 = A01(128, 24, 112) + c02774v.A03;
                    }
                    if (!c02774v.A00) {
                        int iMatch = c02774v.A03.match(scheme, strResolveTypeIfNeeded, scheme2, data, categories, A01(107, 21, 101));
                        if (iMatch >= 0) {
                            if (z) {
                                String str4 = A01(66, 27, 0) + Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(c02774v);
                            c02774v.A00 = true;
                        } else if (z) {
                            switch (iMatch) {
                                case C.RESULT_BUFFER_READ /* -4 */:
                                    strA01 = A01(160, 8, 56);
                                    break;
                                case -3:
                                    strA01 = A01(43, 6, 1);
                                    break;
                                case -2:
                                    strA01 = A01(49, 4, 104);
                                    break;
                                case -1:
                                    strA01 = A01(39, 4, 47);
                                    break;
                                default:
                                    strA01 = A01(93, 14, 50);
                                    break;
                            }
                            String str5 = A01(0, 24, 4) + strA01;
                        }
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((C02774v) arrayList2.get(i2)).A00 = false;
                    }
                    this.A02.add(new C02764u(intent, arrayList2));
                    if (!this.A01.hasMessages(1)) {
                        this.A01.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }
}
