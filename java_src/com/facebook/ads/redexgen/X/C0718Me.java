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
/* renamed from: com.facebook.ads.redexgen.X.Me, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0718Me implements Map<String, String> {
    private static byte[] A01;
    private Map<String, String> A00 = new HashMap();

    static {
        A03();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{-18, -99, 3, 2, -12, -37, -26};
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

    public final C0718Me A04(String str, String str2) {
        this.A00.put(str, str2);
        return this;
    }

    public final C0718Me A05(Map<? extends String, ? extends String> arg) {
        putAll(arg);
        return this;
    }

    public final String A06() {
        C0718Me c0718Me = this;
        String str = null;
        String next = null;
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = c0718Me.A00.keySet().iterator();
        while (true) {
            char c = it.hasNext() ? (char) 3 : (char) 11;
            while (true) {
                switch (c) {
                    case 3:
                        sb = sb;
                        it = it;
                        next = it.next();
                        if (sb.length() <= 0) {
                            c = 5;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    case 4:
                        sb = sb;
                        String value = A00(0, 1, 105);
                        sb.append(value);
                        c = 5;
                        break;
                    case 5:
                        c0718Me = c0718Me;
                        sb = sb;
                        next = next;
                        sb.append(next);
                        str = c0718Me.A00.get(next);
                        if (str != null) {
                            String value2 = A00(1, 1, 1);
                            sb.append(value2);
                            c = 7;
                            break;
                        }
                        break;
                    case 7:
                        try {
                            sb.append(URLEncoder.encode(str, A00(2, 5, 79)));
                            continue;
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                            break;
                        }
                    case 11:
                        return sb.toString();
                }
            }
        }
    }

    @Override // java.util.Map
    /* renamed from: A07, reason: merged with bridge method [inline-methods] */
    public final String put(String str, String str2) {
        return this.A00.put(str, str2);
    }

    public final byte[] A08() throws UnsupportedEncodingException {
        byte[] bytes = null;
        try {
            bytes = A06().getBytes(A00(2, 5, 79));
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
