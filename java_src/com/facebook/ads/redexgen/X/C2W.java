package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.support.annotation.Nullable;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.ads.MediaView;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2W, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C2W extends AbstractC01871j {
    private static byte[] A0D;
    private View A00;

    @Nullable
    private View A01;
    private C2U A02;
    private C2V A03;
    private LJ A04;

    @Nullable
    private String A05;
    private List<View> A06;
    private boolean A07;
    private boolean A08;
    private boolean A09;
    private boolean A0A;
    private boolean A0B;
    private final AnonymousClass29 A0C;

    static {
        A04();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 92);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A0D = new byte[]{9, 1, 0, 13, 5, 18, 13, 1, 19, 82, 79, 67, 69, 86, 104, 95, 94, 89, 67, 68, 108, 110, 121, 127, 125, 127, 116, 121, 67, 113, 121, 120, 117, 125, 11, 4, 1, 11, 3, 9, 10, 4, 13, 3, 14, 7, 18, 86, 89, 74, 89, 74, 100, 107, 102, 116, 116, 111, 108, 119, 43, 58, 39, 43, 13, 0, 3, 58, 38, 39, 105, 44, 49, 42, 44, 57, 61, 32, 38, 39, 97, 119, 98, 102, 94, 68, 87, 72, 120, 125, 103, 96, 77, 66, 78, 84, 34, 63, 48, 33, 34, 57, 62, 37, 100, 103, 37, 58, 123, 51, 63, 102, 37, 58, 123, 98, 110, 109, 118, 97, 112, 21, 2, 3, 3, 24, 25, 105, 118, 122, 104, 120, 109, 112, 106, 111, 60, 51, 63, 58, 50, 40, 53, 45, 54, 51, 54, 55, 47, 54, 84, 82, 73, 68, 91, 87, 69, 88, 95, 64, 48, 52, 56, 62, 60, 64, 83, 1, 30, 95, 23, 27, 76, 1, 30, 95, 70, 112, 109, 118, 120, 118, 113};
    }

    public C2W(Context context, AbstractC01881k abstractC01881k, C6K c6k, AnonymousClass29 anonymousClass29) {
        super(context, abstractC01881k, c6k);
        this.A02 = C2U.A03;
        this.A03 = null;
        this.A0C = anonymousClass29;
    }

    private String A01(View view) {
        try {
            return A03(view).toString();
        } catch (JSONException unused) {
            return A00(66, 14, 21);
        }
    }

    private String A02(View view) {
        if (view.getWidth() <= 0 || view.getHeight() <= 0) {
            return A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 0, 111);
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setDensity(view.getResources().getDisplayMetrics().densityDpi);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            view.draw(canvas);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, this.A0C.A0D(), byteArrayOutputStream);
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        } catch (Exception unused) {
            return A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 0, 111);
        }
    }

    private JSONObject A03(View view) throws JSONException {
        C2W c2w = this;
        int i = 0;
        String strA00 = null;
        ViewGroup viewGroup = null;
        JSONArray jSONArray = null;
        boolean z = true;
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt(A00(64, 2, 56), Integer.valueOf(view.getId()));
        jSONObject.putOpt(A00(52, 5, 91), view.getClass());
        jSONObject.putOpt(A00(177, 6, 67), String.format(Locale.US, A00(104, 12, 67), Integer.valueOf(view.getTop()), Integer.valueOf(view.getLeft())));
        jSONObject.putOpt(A00(84, 4, 113), String.format(Locale.US, A00(165, 12, 103), Integer.valueOf(view.getHeight()), Integer.valueOf(view.getWidth())));
        int i2 = c2w.A06 != null ? 2 : 17;
        while (true) {
            switch (i2) {
                case 2:
                    c2w = c2w;
                    view = view;
                    if (!c2w.A06.contains(view)) {
                        i2 = 17;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    view = view;
                    jSONObject = jSONObject;
                    jSONObject.putOpt(A00(34, 9, 52), Boolean.valueOf(z));
                    strA00 = A00(143, 7, 4);
                    if (!(view instanceof Button)) {
                        i2 = 9;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 4:
                    strA00 = A00(121, 6, 43);
                    i2 = 5;
                    break;
                case 5:
                    view = view;
                    jSONObject = jSONObject;
                    strA00 = strA00;
                    jSONObject.putOpt(A00(43, 4, 43), strA00);
                    if (!(view instanceof ViewGroup)) {
                        i2 = 19;
                        break;
                    } else {
                        i2 = 6;
                        break;
                    }
                case 6:
                    view = view;
                    viewGroup = (ViewGroup) view;
                    jSONArray = new JSONArray();
                    i = 0;
                    i2 = 7;
                    break;
                case 7:
                    viewGroup = viewGroup;
                    int i3 = viewGroup.getChildCount();
                    if (i >= i3) {
                        i2 = 18;
                        break;
                    } else {
                        i2 = 8;
                        break;
                    }
                case 8:
                    c2w = c2w;
                    viewGroup = viewGroup;
                    jSONArray = jSONArray;
                    jSONArray.put(c2w.A03(viewGroup.getChildAt(i)));
                    i++;
                    i2 = 7;
                    break;
                case 9:
                    view = view;
                    if (!(view instanceof TextView)) {
                        i2 = 11;
                        break;
                    } else {
                        i2 = 10;
                        break;
                    }
                case 10:
                    strA00 = A00(60, 4, 3);
                    i2 = 5;
                    break;
                case 11:
                    view = view;
                    if (!(view instanceof ImageView)) {
                        i2 = 13;
                        break;
                    } else {
                        i2 = 12;
                        break;
                    }
                case 12:
                    strA00 = A00(160, 5, 5);
                    i2 = 5;
                    break;
                case 13:
                    view = view;
                    if (!(view instanceof MediaView)) {
                        i2 = 15;
                        break;
                    } else {
                        i2 = 14;
                        break;
                    }
                case 14:
                    strA00 = A00(0, 9, 56);
                    i2 = 5;
                    break;
                case 15:
                    view = view;
                    if (!(view instanceof ViewGroup)) {
                        i2 = 5;
                        break;
                    } else {
                        i2 = 16;
                        break;
                    }
                case 16:
                    strA00 = A00(127, 9, 67);
                    i2 = 5;
                    break;
                case 17:
                    z = false;
                    i2 = 3;
                    break;
                case 18:
                    jSONObject = jSONObject;
                    jSONArray = jSONArray;
                    jSONObject.putOpt(A00(88, 4, 72), jSONArray);
                    i2 = 19;
                    break;
                case 19:
                    return jSONObject;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01871j
    public final void A06(Map<String, String> map) {
        C2W c2w = this;
        char c = c2w.A0C == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c2w = c2w;
                    if (c2w.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c2w = c2w;
                    map = map;
                    map.put(A00(140, 3, 0), String.valueOf(c2w.A04.A04()));
                    c = 5;
                    break;
                case 5:
                    c2w = c2w;
                    if (!c2w.A07) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    map = map;
                    map.put(A00(150, 3, 102), Boolean.TRUE.toString());
                    c = 7;
                    break;
                case 7:
                    c2w = c2w;
                    if (!c2w.A0B) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    map = map;
                    map.put(A00(57, 3, 93), Boolean.TRUE.toString());
                    c = '\t';
                    break;
                case '\t':
                    c2w = c2w;
                    if (!c2w.A08) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    map = map;
                    map.put(A00(116, 5, 92), Boolean.TRUE.toString());
                    c = 11;
                    break;
                case 11:
                    c2w = c2w;
                    if (c2w.A00 == null) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c2w = c2w;
                    if (!c2w.A0C.A0i()) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c2w = c2w;
                    map = map;
                    map.put(A00(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 4, 110), c2w.A01(c2w.A00));
                    c = 14;
                    break;
                case 14:
                    c2w = c2w;
                    if (c2w.A00 == null) {
                        c = 17;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c2w = c2w;
                    if (!c2w.A0C.A0j()) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c2w = c2w;
                    map = map;
                    map.put(A00(96, 8, 13), c2w.A02(c2w.A00));
                    c = 17;
                    break;
                case 17:
                    c2w = c2w;
                    if (!c2w.A0A) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    map = map;
                    map.put(A00(157, 3, 106), Boolean.TRUE.toString());
                    c = 19;
                    break;
                case 19:
                    c2w = c2w;
                    if (c2w.A02 == null) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c2w = c2w;
                    map = map;
                    map.put(A00(20, 14, 64), c2w.A02.toString());
                    c = 21;
                    break;
                case 21:
                    c2w = c2w;
                    if (!c2w.A09) {
                        c = 23;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    map = map;
                    map.put(A00(80, 4, 72), Boolean.TRUE.toString());
                    c = 23;
                    break;
                case 23:
                    c2w = c2w;
                    if (c2w.A01 == null) {
                        c = 25;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c2w = c2w;
                    map = map;
                    map.put(A00(92, 4, 127), String.valueOf((int) (c2w.A01.getWidth() / OY.A01)));
                    map.put(A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 4, 14), String.valueOf((int) (c2w.A01.getHeight() / OY.A01)));
                    c = 25;
                    break;
                case 25:
                    c2w = c2w;
                    if (c2w.A03 == null) {
                        c = 27;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    c2w = c2w;
                    map = map;
                    map.put(A00(47, 5, 100), c2w.A03.toString());
                    c = 27;
                    break;
                case 27:
                    c2w = c2w;
                    if (c2w.A05 == null) {
                        c = 29;
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    c2w = c2w;
                    map = map;
                    map.put(A00(9, 11, 107), c2w.A05);
                    c = 29;
                    break;
                case 29:
                    c2w = c2w;
                    map = map;
                    c2w.A0C.A0b(map);
                    c = 2;
                    break;
            }
        }
    }

    public final void A07(@Nullable View view) {
        this.A01 = view;
    }

    public final void A08(View view) {
        this.A00 = view;
    }

    public final void A09(C2U c2u) {
        this.A02 = c2u;
    }

    public final void A0A(C2V c2v) {
        this.A03 = c2v;
    }

    public final void A0B(LJ lj) {
        this.A04 = lj;
    }

    public final void A0C(@Nullable String str) {
        this.A05 = str;
    }

    public final void A0D(List<View> clickableViews) {
        this.A06 = clickableViews;
    }

    public final void A0E(boolean z) {
        this.A07 = z;
    }

    public final void A0F(boolean z) {
        this.A08 = z;
    }

    public final void A0G(boolean z) {
        this.A09 = z;
    }

    public final void A0H(boolean z) {
        this.A0A = z;
    }

    public final void A0I(boolean z) {
        this.A0B = z;
    }
}
