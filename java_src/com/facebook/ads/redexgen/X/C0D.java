package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import io.agora.rtc.Constants;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0D, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C0D implements C0T {
    private static byte[] A09;

    @VisibleForTesting
    public final Runnable A00;
    private final InterfaceC02855d A01;
    private final C0Y A03;
    private final InterfaceC0643Jd A04;
    private final String A05;
    private final Map<EnumC01660k, C01650j> A08 = new HashMap();
    private final Map<EnumC01660k, C0U> A07 = new HashMap();
    private final List<C0C> A06 = new ArrayList();
    private final C01620e A02 = new C01620e(this);

    static {
        A05();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A09 = new byte[]{-89, -77, -78, -72, -87, -68, -72, -77, -39, -50, -61, -56, -46, -49, -50, -55, -38, -63, -44, -55, -49, -50, -128, -46, -43, -50, -128, -58, -63, -55, -52, -59, -60, -101, -128, -58, -49, -46, -61, -55, -50, -57, -128, -55, -50, -128, -123, -60, -128, -45, -59, -61, -49, -50, -60, -45, -65, -78, -64, -67, -68, -69, -64, -78, -66, -69, -50, -69, 11, -2, 10, 14, -2, 12, 13, -103, -65, -76, -87, -82, -72, -75, -76, -81, -64, -89, -70, -81, -75, -76, 102, -72, -85, -73, -69, -85, -71, -70, 102, -70, -75, 102, 107, -71, -128, 80, 107, -71, -25, -2, 16, -71, 12, -2, 11, 15, -2, 11, -58, 8, 16, 7, -2, -3, -71, -5, 14, 7, -3, 5, -2, -71, -4, 11, -2, -6, 13, -2, -3, -45, -71, -66, 12, -72, -69, -64, -71, -73, -60, -62, -60, -69, -64, -58, -76, -95, -78, -89, -91, -76, -97, -78, -91, -90, -78, -91, -77, -88, -97, -77, 15, 2, 3, 15, 2, 16, 5, -121, -91, -78, -78, -77, -72, 100, -89, -74, -87, -91, -72, -87, 100, -73, -87, -74, -70, -87, -74, 100, -90, -71, -78, -88, -80, -87, 100, -69, -83, -72, -84, 100, -78, -77, -78, 113, -73, -87, -74, -70, -87, -74, 100, -77, -69, -78, -87, -88, 100, -90, -71, -78, -88, -80, -87, 100, -115, -120, -47, -62, -38, -51, -48, -62, -59, -98, -31, 6, 14, -7, 4, 1, -4, -72, 10, -3, -2, 10, -3, 11, 0, -72, 12, 1, 5, -3, -46, -72, -67, -4, -94, -75, -82, -92, -84, -91, -77, -99, -61, -72, -83, -78, -68, -71, -72, -77, -60, -85, -66, -77, -71, -72, 106, -68, -81, -67, -70, -71, -72, -67, -81, -124, 84, 111, -67};
    }

    public C0D(InterfaceC02855d interfaceC02855d, String str, InterfaceC0643Jd interfaceC0643Jd, C0Y c0y) {
        this.A01 = interfaceC02855d;
        this.A05 = str;
        this.A04 = interfaceC0643Jd;
        this.A03 = c0y;
    }

    private static int A00(JSONObject jSONObject) throws JSONException {
        int time = jSONObject.getJSONObject(A01(170, 7, 95)).getInt(A01(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 16, 2));
        if (time <= 0) {
            throw new JSONException(String.format(Locale.US, A01(IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 24, 90), Integer.valueOf(time)));
        }
        return time;
    }

    private Set<C0M> A02(JSONObject jSONObject) throws JSONException {
        C0D c0d = this;
        final C01650j next = null;
        Iterator<C0U> it = null;
        final C0U next2 = null;
        HashSet hashSet = new HashSet();
        JSONObject jSONObject2 = jSONObject.getJSONObject(A01(56, 8, 15));
        JSONObject jSONObject3 = jSONObject.getJSONObject(A01(268, 7, 2));
        Iterator<C01650j> it2 = c0d.A08.values().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jSONObject2 = jSONObject2;
                    it2 = it2;
                    next = it2.next();
                    AnonymousClass09 responseForBundle = AnonymousClass09.A00(jSONObject2.getString(next.A3Y().A03()));
                    switch (responseForBundle) {
                        case A03:
                            c = 6;
                            break;
                        case A04:
                            c = 5;
                            break;
                        default:
                            c = 4;
                            break;
                    }
                case 4:
                    throw new AssertionError();
                case 5:
                    hashSet = hashSet;
                    next = next;
                    hashSet.add(new C0J(next) { // from class: com.facebook.ads.redexgen.X.0F
                        {
                            AnonymousClass09 anonymousClass09 = AnonymousClass09.A04;
                        }
                    });
                    c = 2;
                    break;
                case 6:
                    hashSet = hashSet;
                    jSONObject3 = jSONObject3;
                    next = next;
                    final JSONObject jSONObject4 = jSONObject3.getJSONObject(next.A3Y().A03()).getJSONObject(A01(64, 4, 28));
                    final JSONObject jSONObjectOptJSONObject = jSONObject3.getJSONObject(next.A3Y().A03()).optJSONObject(A01(143, 11, 20));
                    hashSet.add(new C0J(next, jSONObject4, jSONObjectOptJSONObject) { // from class: com.facebook.ads.redexgen.X.0I
                        public final JSONObject A00;

                        @Nullable
                        public final JSONObject A01;

                        {
                            AnonymousClass09 anonymousClass09 = AnonymousClass09.A03;
                            this.A00 = jSONObject4;
                            this.A01 = jSONObjectOptJSONObject;
                        }

                        @Override // com.facebook.ads.redexgen.X.C0J, com.facebook.ads.redexgen.X.C0M
                        public final void A2c(Map<InterfaceC01670l, AnonymousClass09> map, Map<C0X, EnumC01600c> map2) {
                            super.A00.A05(this.A00, this.A01);
                            super.A2c(map, map2);
                        }
                    });
                    c = 2;
                    break;
                case 7:
                    c0d = c0d;
                    it = c0d.A07.values().iterator();
                    c = '\b';
                    break;
                case '\b':
                    it = it;
                    if (!it.hasNext()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    jSONObject2 = jSONObject2;
                    it = it;
                    next2 = it.next();
                    EnumC01600c responseForBundle2 = EnumC01600c.A00(jSONObject2.getString(next2.A3Y().A03()));
                    switch (responseForBundle2) {
                        case A03:
                            c = '\f';
                            break;
                        case A04:
                            c = 11;
                            break;
                        default:
                            c = '\n';
                            break;
                    }
                case '\n':
                    throw new AssertionError();
                case 11:
                    hashSet = hashSet;
                    next2 = next2;
                    hashSet.add(new C0L(next2) { // from class: com.facebook.ads.redexgen.X.0E
                        {
                            EnumC01600c enumC01600c = EnumC01600c.A04;
                        }

                        @Override // com.facebook.ads.redexgen.X.C0L, com.facebook.ads.redexgen.X.C0M
                        public final void A2c(Map<InterfaceC01670l, AnonymousClass09> map, Map<C0X, EnumC01600c> map2) {
                            this.A01.A06();
                            super.A2c(map, map2);
                        }
                    });
                    c = '\b';
                    break;
                case '\f':
                    hashSet = hashSet;
                    next2 = next2;
                    hashSet.add(new C0L(next2) { // from class: com.facebook.ads.redexgen.X.0K
                        {
                            EnumC01600c enumC01600c = EnumC01600c.A03;
                        }
                    });
                    c = '\b';
                    break;
                case '\r':
                    return hashSet;
            }
        }
    }

    private JSONObject A03(Map<InterfaceC01670l, C0B> map, Map<C0X, EnumC01610d> map2, Map<C0X, JSONObject> map3, Map<C0X, JSONObject> map4) throws JSONException {
        Map<C0X, JSONObject> map5 = map4;
        Map<C0X, JSONObject> map6 = map3;
        Map<C0X, EnumC01610d> map7 = map2;
        Map<InterfaceC01670l, C0B> map8 = map;
        C0D c0d = this;
        InterfaceC01670l key = null;
        JSONObject request = null;
        Map.Entry<InterfaceC01670l, C0B> next = null;
        JSONObject jSONObject = null;
        Iterator<Map.Entry<C0X, EnumC01610d>> it = null;
        Iterator<Map.Entry<C0X, EnumC01610d>> it2 = null;
        JSONObject jSONObject2 = null;
        Map.Entry<String, String> next2 = null;
        Iterator<Map.Entry<InterfaceC01670l, C0B>> it3 = null;
        JSONObject jSONObject3 = null;
        InterfaceC01670l key2 = null;
        Iterator<Map.Entry<String, String>> it4 = null;
        JSONObject jSONObject4 = new JSONObject();
        Iterator<Map.Entry<InterfaceC01670l, C0B>> it5 = map8.entrySet().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it5 = it5;
                    if (!it5.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jSONObject4 = jSONObject4;
                    it5 = it5;
                    Map.Entry<InterfaceC01670l, C0B> next3 = it5.next();
                    jSONObject4.put(next3.getKey().A3Y().A03(), next3.getValue().A02());
                    c = 2;
                    break;
                case 4:
                    map7 = map7;
                    it2 = map7.entrySet().iterator();
                    c = 5;
                    break;
                case 5:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONObject4 = jSONObject4;
                    it2 = it2;
                    Map.Entry<C0X, EnumC01610d> next4 = it2.next();
                    jSONObject4.put(next4.getKey().A3Y().A03(), next4.getValue().A02());
                    c = 5;
                    break;
                case 7:
                    map8 = map8;
                    jSONObject2 = new JSONObject();
                    it3 = map8.entrySet().iterator();
                    c = '\b';
                    break;
                case '\b':
                    it3 = it3;
                    if (!it3.hasNext()) {
                        c = 14;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    it3 = it3;
                    next = it3.next();
                    if (next.getValue() != C0B.A04) {
                        c = '\b';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    jSONObject2 = jSONObject2;
                    next = next;
                    jSONObject = new JSONObject();
                    key = next.getKey();
                    jSONObject2.put(key.A3Y().A03(), jSONObject);
                    if (!next.getKey().A3Y().A04()) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    jSONObject = jSONObject;
                    key = key;
                    jSONObject.put(A01(143, 11, 20), key.A3W());
                    c = '\f';
                    break;
                case '\f':
                    jSONObject2 = jSONObject2;
                    jSONObject = jSONObject;
                    key = key;
                    jSONObject2.put(key.A3Y().A03(), jSONObject);
                    c = '\b';
                    break;
                case '\r':
                    jSONObject = jSONObject;
                    jSONObject.put(A01(143, 11, 20), JSONObject.NULL);
                    c = '\f';
                    break;
                case 14:
                    map7 = map7;
                    it = map7.entrySet().iterator();
                    c = 15;
                    break;
                case 15:
                    it = it;
                    if (!it.hasNext()) {
                        c = 19;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    map5 = map5;
                    it = it;
                    Map.Entry<C0X, EnumC01610d> next5 = it.next();
                    jSONObject3 = new JSONObject();
                    key2 = next5.getKey();
                    jSONObject3.put(A01(143, 11, 20), map5.get(next5.getKey()));
                    if (next5.getValue() != EnumC01610d.A04) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    map6 = map6;
                    jSONObject2 = jSONObject2;
                    jSONObject3 = jSONObject3;
                    key2 = key2;
                    jSONObject3.put(A01(64, 4, 28), map6.get(key2));
                    jSONObject2.put(key2.A3Y().A03(), jSONObject3);
                    c = 15;
                    break;
                case 18:
                    jSONObject2 = jSONObject2;
                    jSONObject3 = jSONObject3;
                    key2 = key2;
                    jSONObject2.put(key2.A3Y().A03(), jSONObject3);
                    c = 15;
                    break;
                case 19:
                    c0d = c0d;
                    request = new JSONObject();
                    it4 = c0d.A04.A3U().entrySet().iterator();
                    c = 20;
                    break;
                case 20:
                    it4 = it4;
                    if (!it4.hasNext()) {
                        c = 23;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    it4 = it4;
                    next2 = it4.next();
                    if (next2.getValue() == null) {
                        c = 20;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    request = request;
                    next2 = next2;
                    request.put(next2.getKey(), next2.getValue());
                    c = 20;
                    break;
                case 23:
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put(A01(68, 7, 91), jSONObject4);
                    jSONObject5.put(A01(268, 7, 2), jSONObject2);
                    jSONObject5.put(A01(0, 7, 6), request);
                    return jSONObject5;
            }
        }
    }

    private void A04() throws Throwable {
        Map<InterfaceC01670l, C0B> serverBundleRequests = new HashMap<>();
        Map<C0X, EnumC01610d> map = new HashMap<>();
        Map<C0X, JSONObject> map2 = new HashMap<>();
        Map<C0X, JSONObject> map3 = new HashMap<>();
        synchronized (this) {
            for (InterfaceC01670l interfaceC01670l : this.A08.values()) {
                if (interfaceC01670l.A40()) {
                    serverBundleRequests.put(interfaceC01670l, C0B.A04);
                } else {
                    serverBundleRequests.put(interfaceC01670l, C0B.A03);
                }
            }
            AtomicReference<JSONObject> atomicReference = new AtomicReference<>();
            AtomicReference<JSONObject> atomicReference2 = new AtomicReference<>();
            for (C0U c0u : this.A07.values()) {
                if (c0u.A40()) {
                    if (c0u.A07(atomicReference, atomicReference2)) {
                        map.put(c0u, EnumC01610d.A04);
                        map2.put(c0u, atomicReference.get());
                    } else {
                        map.put(c0u, EnumC01610d.A03);
                    }
                    map3.put(c0u, atomicReference2.get());
                }
            }
            Iterator<C0C> it = this.A06.iterator();
            while (it.hasNext()) {
                it.next().synchronizationStarted(serverBundleRequests, map);
            }
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference<Throwable> failureContainer = new AtomicReference<>();
        final AtomicReference atomicReference3 = new AtomicReference();
        JSONObject jSONObjectA03 = A03(serverBundleRequests, map, map2, map3);
        String.format(Locale.US, A01(75, 33, 8), this.A05, jSONObjectA03.toString(2));
        this.A01.A6Y(this.A05, (A01(236, 8, 35) + URLEncoder.encode(jSONObjectA03.toString())).getBytes(), new InterfaceC0703Ln() { // from class: com.facebook.ads.redexgen.X.0P
            @Override // com.facebook.ads.redexgen.X.InterfaceC0703Ln
            public final void A55(C5e c5e) {
                C0D.A06(c5e.A3H(), failureContainer, atomicReference3);
                countDownLatch.countDown();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC0703Ln
            public final void A5H(Exception exc) {
                atomicReference3.set(exc);
                countDownLatch.countDown();
            }
        });
        while (countDownLatch.getCount() > 0) {
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
            }
        }
        synchronized (this) {
            if (atomicReference3.get() != null) {
                throw ((Throwable) atomicReference3.get());
            }
            JSONObject syncRequest = (JSONObject) failureContainer.get();
            Set<C0M> setA02 = A02(syncRequest);
            HashMap map4 = new HashMap();
            HashMap map5 = new HashMap();
            Iterator<C0M> it2 = setA02.iterator();
            while (it2.hasNext()) {
                it2.next().A2c(map4, map5);
            }
            this.A02.A03(A00((JSONObject) failureContainer.get()));
            Iterator<C0C> it3 = this.A06.iterator();
            while (it3.hasNext()) {
                it3.next().synchronizationFinished(map4, map5, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A06(String str, AtomicReference<JSONObject> atomicReference, AtomicReference<Throwable> atomicReference2) {
        String.format(Locale.US, A01(275, 28, 12), str);
        try {
            atomicReference.set((JSONObject) new JSONTokener(str).nextValue());
        } catch (ClassCastException | JSONException e) {
            atomicReference2.set(e);
        }
    }

    public final void A08() {
        try {
            A04();
        } catch (Throwable t) {
            String.format(Locale.US, A01(7, 49, 34), Integer.valueOf(this.A03.A01()));
            synchronized (this) {
                Iterator<C0C> it = this.A06.iterator();
                while (it.hasNext()) {
                    it.next().synchronizationFinished(new HashMap(), new HashMap(), t);
                }
                this.A02.A03(this.A03.A01());
            }
        }
        if (this.A00 != null) {
            this.A00.run();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C0T
    public final synchronized InterfaceC01670l A2v(EnumC01660k enumC01660k) {
        C01650j c01650j;
        if (enumC01660k.A02() != EnumC01640i.A03) {
            throw new IllegalArgumentException(A01(177, 59, 6));
        }
        if (this.A08.containsKey(enumC01660k)) {
            c01650j = this.A08.get(enumC01660k);
        } else {
            c01650j = new C01650j(enumC01660k);
            this.A08.put(enumC01660k, c01650j);
            Iterator<C0C> it = this.A06.iterator();
            while (it.hasNext()) {
                it.next().serverOwnedBundleCreated(c01650j);
            }
            String.format(Locale.US, A01(108, 35, 91), enumC01660k);
        }
        return c01650j;
    }

    @Override // com.facebook.ads.redexgen.X.C0T
    public final void A38() {
        this.A02.A02();
    }
}
