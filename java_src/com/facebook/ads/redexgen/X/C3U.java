package com.facebook.ads.redexgen.X;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3U, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3U implements Map<String, String> {
    private static byte[] A01;
    private Map<String, String> A00;

    static {
        A04();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 47);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{98, -76, -27, -28, -42, -67, -56};
    }

    public C3U() {
        this.A00 = new HashMap();
    }

    public C3U(Map<String, String> map) {
        this.A00 = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Map
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final String get(Object obj) {
        return this.A00.get(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Map
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final String remove(Object obj) {
        return this.A00.remove(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Map
    /* renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final String put(String str, String str2) {
        return this.A00.put(str, str2);
    }

    public final C3U A05(Map<? extends String, ? extends String> arg) {
        putAll(arg);
        return this;
    }

    public final String A06() {
        C3U c3u = this;
        String strA00 = null;
        Iterator<String> it = null;
        String str = null;
        StringBuilder sb = null;
        String next = null;
        char c = c3u.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA00 = A00(2, 0, 104);
                    c = 3;
                case 3:
                    return strA00;
                case 4:
                    c3u = c3u;
                    sb = new StringBuilder();
                    it = c3u.A00.keySet().iterator();
                    break;
                case 6:
                    sb = sb;
                    it = it;
                    next = it.next();
                    c = sb.length() > 0 ? (char) 7 : '\b';
                case 7:
                    sb = sb;
                    sb.append(A00(0, 1, 13));
                    c = '\b';
                case '\b':
                    c3u = c3u;
                    sb = sb;
                    next = next;
                    sb.append(next);
                    str = c3u.A00.get(next);
                    if (str == null) {
                        break;
                    } else {
                        sb.append(A00(1, 1, 72));
                        c = '\n';
                    }
                case '\n':
                    try {
                        sb.append(URLEncoder.encode(str, A00(2, 5, 97)));
                        break;
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                        break;
                    }
                case 14:
                    sb = sb;
                    strA00 = sb.toString();
                    c = 3;
            }
            c = it.hasNext() ? (char) 6 : (char) 14;
        }
    }

    public final byte[] A07() throws UnsupportedEncodingException {
        byte[] bytes = null;
        try {
            bytes = A06().getBytes(A00(2, 5, 97));
            return bytes;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return bytes;
        }
    }

    @Override // java.util.Map
    public final void clear() {
        this.A00.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.A00.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.A00.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<String, String>> entrySet() {
        return this.A00.entrySet();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.A00.isEmpty();
    }

    @Override // java.util.Map
    public final Set<String> keySet() {
        return this.A00.keySet();
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends String, ? extends String> map) {
        Map<? extends String, ? extends String> arg = this.A00;
        arg.putAll(map);
    }

    @Override // java.util.Map
    public final int size() {
        return this.A00.size();
    }

    @Override // java.util.Map
    public final Collection<String> values() {
        return this.A00.values();
    }
}
