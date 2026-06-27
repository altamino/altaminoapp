package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.C;
import com.narvii.model.User;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
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
/* renamed from: com.facebook.ads.redexgen.X.1T, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C1T {
    private static byte[] A00;
    private static final String A01;

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 111);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{43, 58, 40, 40, 47, 51, 41, 52, 46, 60, 51, 75, 112, 127, 124, 114, 123, 62, 106, 113, 62, 110, 127, 108, 109, 123, 62, 116, 109, 113, 112, 62, 122, 127, 106, 127, 62, 119, 112, 62, 95, 122, 95, 125, 106, 119, 113, 112, 88, 127, 125, 106, 113, 108, 103, 48, 14, 9, 18, 15, 24, 116, 113, 100, 113, 110, 113, 124, 125, 119, 71, 109, 106, 116, 14, 17, 4, 15, 62, 13, 8, 15, 10};
    }

    static {
        A03();
        A01 = C1T.class.getSimpleName();
    }

    private C1T() {
    }

    @Nullable
    public static C1S A00(Context context, KM km, String str, Uri uri, Map<String, String> extraData) {
        return A01(context, km, str, uri, extraData, true, false);
    }

    @Nullable
    public static C1S A01(final Context context, final KM km, final String str, final Uri uri, final Map<String, String> map, final boolean z, boolean z2) {
        if (uri == null || uri.getAuthority() == null) {
            return null;
        }
        String authority = uri.getAuthority();
        String action = A02(65, 9, 119);
        String dataJson = uri.getQueryParameter(action);
        String videoURL = A02(61, 4, 127);
        if (!TextUtils.isEmpty(uri.getQueryParameter(videoURL))) {
            try {
                String videoURL2 = A02(61, 4, 127);
                JSONObject jSONObject = new JSONObject(uri.getQueryParameter(videoURL2));
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String key = itKeys.next();
                    map.put(key, jSONObject.getString(key));
                }
            } catch (JSONException e) {
                Log.w(A01, A02(11, 45, 113), e);
            }
        }
        final C01831f c01831fA00 = C01831f.A00(km, NR.A00());
        char c = 65535;
        switch (authority.hashCode()) {
            case -1458789996:
                if (authority.equals(A02(0, 11, 52))) {
                    c = 2;
                    break;
                }
                break;
            case 109770977:
                if (authority.equals(A02(56, 5, 18))) {
                    c = 0;
                    break;
                }
                break;
            case 1546100943:
                if (authority.equals(A02(74, 9, 14))) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (dataJson == null) {
                    return new C1X(context, km, str, uri, map, c01831fA00, z) { // from class: com.facebook.ads.redexgen.X.1Y
                        private static byte[] A02;
                        private static final String A03;
                        private final Uri A00;
                        private final Map<String, String> A01;

                        private static String A03(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                            int i4 = 0;
                            char c2 = 2;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        if (i4 >= bArrCopyOfRange.length) {
                                            c2 = 4;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 3:
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
                                        i4++;
                                        c2 = 2;
                                        break;
                                    case 4:
                                        return new String(bArrCopyOfRange);
                                }
                            }
                        }

                        private static void A06() {
                            A02 = new byte[]{71, 88, 77, 70, 77, 76, 119, 91, 92, 71, 90, 77, 119, 93, 90, 68, 79, 104, 96, 101, 108, 109, 41, 125, 102, 41, 102, 121, 108, 103, 41, 100, 104, 123, 98, 108, 125, 41, 124, 123, 101, 51, 41, 47, 40, 51, 46, 57, 3, 41, 46, 48, 3, 43, 57, 62, 3, 58, 61, 48, 48, 62, 61, 63, 55, 104, 121, 121, 122, 96, 125, 108, 86, 109, 104, 125, 104, 43, 36, 46, 56, 37, 35, 46, 100, 35, 36, 62, 47, 36, 62, 100, 43, 41, 62, 35, 37, 36, 100, 9, 11, 6, 6, 43, 58, 51, 47, 45, 48, 50, 47, 43, 101, 46, 49, 36, 47, 36, 37, 30, 50, 53, 46, 51, 36, 30, 39, 32, 45, 45, 35, 32, 34, 42, 30, 52, 51, 45, 8, 63, 63, 34, 63, 109, 61, 44, 63, 62, 36, 35, 42, 109, 44, 61, 61, 62, 36, 57, 40, 18, 41, 44, 57, 44, 106, 101, 111, 121, 100, 98, 111, 55, 49, 22, 17, 10, 23, 0, 58, 16, 23, 9, 64, 76, 95, 70, 72, 89, 23, 2, 2, 73, 72, 89, 76, 68, 65, 94, 18, 68, 73, 16, 8, 94, 28, 3, 22, 29, 22, 23, 44, 23, 22, 22, 3, 31, 26, 29, 24, 77, 74, 81, 76, 91, 97, 87, 90, 104, 103, 109, 123, 102, 96, 109, 39, 96, 103, 125, 108, 103, 125, 39, 104, 106, 125, 96, 102, 103, 39, 95, 64, 76, 94, 11, 26, 19, 69};
                        }

                        static {
                            A06();
                            A03 = C1Y.class.getSimpleName();
                        }

                        {
                            this.A00 = uri;
                            this.A01 = map;
                        }

                        private Intent A00(C1Z c1z) {
                            C1Y c1y = this;
                            Iterator<ResolveInfo> it = null;
                            Intent intent = null;
                            PackageManager packageManager = null;
                            ResolveInfo next = null;
                            List<ResolveInfo> listQueryIntentActivities = null;
                            String strA03 = null;
                            char c2 = TextUtils.isEmpty(c1z.A05()) ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        intent = null;
                                        c2 = 3;
                                        break;
                                    case 3:
                                        return intent;
                                    case 4:
                                        c1y = c1y;
                                        c1z = c1z;
                                        if (!C1W.A04(((C1S) c1y).A00, c1z.A05())) {
                                            c2 = 5;
                                            break;
                                        } else {
                                            c2 = 6;
                                            break;
                                        }
                                    case 5:
                                        intent = null;
                                        c2 = 3;
                                        break;
                                    case 6:
                                        c1z = c1z;
                                        strA03 = c1z.A03();
                                        if (!TextUtils.isEmpty(strA03)) {
                                            c2 = 7;
                                            break;
                                        } else {
                                            c2 = '\n';
                                            break;
                                        }
                                    case 7:
                                        strA03 = strA03;
                                        if (!strA03.startsWith(A03(User.USER_ROLE_NEWS_FEED, 4, 57))) {
                                            c2 = '\b';
                                            break;
                                        } else {
                                            c2 = '\t';
                                            break;
                                        }
                                    case '\b':
                                        strA03 = strA03;
                                        if (!strA03.startsWith(A03(103, 10, 25))) {
                                            c2 = '\n';
                                            break;
                                        } else {
                                            c2 = '\t';
                                            break;
                                        }
                                    case '\t':
                                        strA03 = strA03;
                                        intent = new Intent(A03(77, 26, 12), Uri.parse(strA03));
                                        c2 = 3;
                                        break;
                                    case '\n':
                                        c1y = c1y;
                                        c1z = c1z;
                                        packageManager = ((C1S) c1y).A00.getPackageManager();
                                        if (!TextUtils.isEmpty(c1z.A04())) {
                                            c2 = '\r';
                                            break;
                                        } else {
                                            c2 = 11;
                                            break;
                                        }
                                    case 11:
                                        strA03 = strA03;
                                        if (!TextUtils.isEmpty(strA03)) {
                                            c2 = '\r';
                                            break;
                                        } else {
                                            c2 = '\f';
                                            break;
                                        }
                                    case '\f':
                                        c1z = c1z;
                                        packageManager = packageManager;
                                        intent = packageManager.getLaunchIntentForPackage(c1z.A05());
                                        c2 = 3;
                                        break;
                                    case '\r':
                                        c1y = c1y;
                                        c1z = c1z;
                                        packageManager = packageManager;
                                        intent = c1y.A01(c1z);
                                        listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                                        if (intent.getComponent() != null) {
                                            c2 = 18;
                                            break;
                                        } else {
                                            c2 = 14;
                                            break;
                                        }
                                    case 14:
                                        listQueryIntentActivities = listQueryIntentActivities;
                                        it = listQueryIntentActivities.iterator();
                                        c2 = 15;
                                        break;
                                    case 15:
                                        it = it;
                                        if (!it.hasNext()) {
                                            c2 = 18;
                                            break;
                                        } else {
                                            c2 = 16;
                                            break;
                                        }
                                    case 16:
                                        c1z = c1z;
                                        it = it;
                                        next = it.next();
                                        if (!next.activityInfo.packageName.equals(c1z.A05())) {
                                            c2 = 15;
                                            break;
                                        } else {
                                            c2 = 17;
                                            break;
                                        }
                                    case 17:
                                        intent = intent;
                                        next = next;
                                        intent.setComponent(new ComponentName(next.activityInfo.packageName, next.activityInfo.name));
                                        c2 = 18;
                                        break;
                                    case 18:
                                        listQueryIntentActivities = listQueryIntentActivities;
                                        if (!listQueryIntentActivities.isEmpty()) {
                                            c2 = 19;
                                            break;
                                        } else {
                                            c2 = 20;
                                            break;
                                        }
                                    case 19:
                                        intent = intent;
                                        if (intent.getComponent() != null) {
                                            c2 = 3;
                                            break;
                                        } else {
                                            c2 = 20;
                                            break;
                                        }
                                    case 20:
                                        intent = null;
                                        c2 = 3;
                                        break;
                                }
                            }
                        }

                        private Intent A01(C1Z c1z) {
                            Intent intent = new Intent(A03(227, 26, 79));
                            intent.addFlags(C.ENCODING_PCM_MU_LAW);
                            char c2 = !TextUtils.isEmpty(c1z.A05()) ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        c1z = c1z;
                                        if (!TextUtils.isEmpty(c1z.A04())) {
                                            c2 = 3;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 3:
                                        c1z = c1z;
                                        intent = intent;
                                        intent.setComponent(new ComponentName(c1z.A05(), c1z.A04()));
                                        c2 = 4;
                                        break;
                                    case 4:
                                        c1z = c1z;
                                        if (!TextUtils.isEmpty(c1z.A03())) {
                                            c2 = 5;
                                            break;
                                        } else {
                                            c2 = 6;
                                            break;
                                        }
                                    case 5:
                                        c1z = c1z;
                                        intent = intent;
                                        intent.setData(Uri.parse(c1z.A03()));
                                        c2 = 6;
                                        break;
                                    case 6:
                                        return intent;
                                }
                            }
                        }

                        private final Uri A02() {
                            C1Y c1y = this;
                            Uri uri2 = null;
                            String queryParameter = c1y.A00.getQueryParameter(A03(173, 9, 35));
                            char c2 = !TextUtils.isEmpty(queryParameter) ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        queryParameter = queryParameter;
                                        uri2 = Uri.parse(queryParameter);
                                        c2 = 3;
                                        break;
                                    case 3:
                                        return uri2;
                                    case 4:
                                        c1y = c1y;
                                        Uri uri3 = c1y.A00;
                                        String storeUrl = A03(219, 8, 120);
                                        uri2 = Uri.parse(String.format(Locale.US, A03(182, 22, 107), uri3.getQueryParameter(storeUrl)));
                                        c2 = 3;
                                        break;
                                }
                            }
                        }

                        private List<C1Z> A04() {
                            String queryParameter = this.A00.getQueryParameter(A03(65, 12, 79));
                            if (TextUtils.isEmpty(queryParameter) || A03(171, 2, 42).equals(queryParameter)) {
                                return null;
                            }
                            ArrayList arrayList = new ArrayList();
                            try {
                                JSONArray appsiteDataArray = new JSONObject(queryParameter).optJSONArray(A03(164, 7, 77));
                                if (appsiteDataArray == null) {
                                    return arrayList;
                                }
                                for (int i = 0; i < appsiteDataArray.length(); i++) {
                                    JSONObject dataObject = appsiteDataArray.optJSONObject(i);
                                    C1Z c1zA00 = C1Z.A00(dataObject);
                                    if (c1zA00 != null) {
                                        arrayList.add(c1zA00);
                                    }
                                }
                                return arrayList;
                            } catch (JSONException e2) {
                                Log.w(A03, A03(138, 26, 11), e2);
                                return arrayList;
                            }
                        }

                        private final List<Intent> A05() {
                            C1Y c1y = this;
                            Iterator<C1Z> it = null;
                            Intent intentA00 = null;
                            List<C1Z> listA04 = c1y.A04();
                            ArrayList arrayList = new ArrayList();
                            char c2 = listA04 != null ? (char) 2 : (char) 6;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        listA04 = listA04;
                                        it = listA04.iterator();
                                        c2 = 3;
                                        break;
                                    case 3:
                                        it = it;
                                        if (!it.hasNext()) {
                                            c2 = 6;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 4:
                                        c1y = c1y;
                                        it = it;
                                        intentA00 = c1y.A00(it.next());
                                        if (intentA00 == null) {
                                            c2 = 3;
                                            break;
                                        } else {
                                            c2 = 5;
                                            break;
                                        }
                                    case 5:
                                        arrayList = arrayList;
                                        intentA00 = intentA00;
                                        arrayList.add(intentA00);
                                        c2 = 3;
                                        break;
                                    case 6:
                                        return arrayList;
                                }
                            }
                        }

                        private boolean A07() {
                            C1Y c1y = this;
                            Intent next = null;
                            Iterator<Intent> it = null;
                            boolean z3 = false;
                            List<Intent> listA05 = c1y.A05();
                            char c2 = listA05 == null ? (char) 2 : (char) 3;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        return z3;
                                    case 3:
                                        listA05 = listA05;
                                        it = listA05.iterator();
                                        break;
                                    case 5:
                                        it = it;
                                        next = it.next();
                                        c2 = 6;
                                    case 6:
                                        try {
                                            c1y = c1y;
                                            ((C1S) c1y).A00.startActivity(next);
                                            z3 = true;
                                            c2 = 2;
                                        } catch (Exception unused) {
                                            break;
                                        }
                                }
                                c2 = it.hasNext() ? (char) 5 : (char) 2;
                            }
                        }

                        private boolean A08() {
                            C1Y c1y = this;
                            String fallbackUrl = null;
                            boolean z3 = false;
                            C0784Ot c0784Ot = new C0784Ot();
                            char c2 = 2;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        try {
                                            c1y = c1y;
                                            C0784Ot.A08(c0784Ot, ((C1S) c1y).A00, c1y.A02(), c1y.A02);
                                            z3 = true;
                                            c2 = 11;
                                            break;
                                        } catch (Exception unused) {
                                            String str2 = A03(16, 27, 79) + c1y.A00.toString();
                                            fallbackUrl = c1y.A00.getQueryParameter(A03(43, 22, 26));
                                            if (fallbackUrl == null) {
                                                c2 = '\t';
                                                break;
                                            } else {
                                                c2 = 7;
                                                break;
                                            }
                                        }
                                    case 7:
                                        fallbackUrl = fallbackUrl;
                                        if (fallbackUrl.length() <= 0) {
                                            c2 = '\t';
                                            break;
                                        } else {
                                            c2 = '\b';
                                            break;
                                        }
                                    case '\b':
                                        c1y = c1y;
                                        c0784Ot = c0784Ot;
                                        fallbackUrl = fallbackUrl;
                                        C0784Ot.A08(c0784Ot, ((C1S) c1y).A00, Uri.parse(fallbackUrl), c1y.A02);
                                        c2 = '\t';
                                        break;
                                    case '\t':
                                        z3 = false;
                                        c2 = 11;
                                        break;
                                    case 11:
                                        return z3;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.C1S
                        @Nullable
                        public final C1R A09() {
                            C1Y c1y = this;
                            C1R c1r = null;
                            String strA03 = A03(204, 15, 53);
                            boolean redirectedToApp = c1y.A07();
                            char c2 = !redirectedToApp ? (char) 2 : '\t';
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        c1y = c1y;
                                        boolean redirectedToApp2 = c1y.A08();
                                        if (!redirectedToApp2) {
                                            c2 = 6;
                                            break;
                                        } else {
                                            c2 = 4;
                                            break;
                                        }
                                    case 4:
                                        strA03 = A03(0, 16, 110);
                                        c2 = '\t';
                                        break;
                                    case 6:
                                        try {
                                            strA03 = A03(113, 25, 7);
                                            c2 = '\t';
                                            break;
                                        } catch (Exception unused) {
                                            c1r = C1R.A02;
                                            c2 = '\t';
                                            break;
                                        }
                                    case '\t':
                                        c1y.A01.put(strA03, String.valueOf(true));
                                        return c1r;
                                }
                            }
                        }

                        @Override // com.facebook.ads.redexgen.X.C1X
                        public final void A0A() {
                            C1Y c1y = this;
                            C1R c1rA09 = null;
                            char c2 = ((C1X) c1y).A01 ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        c1y = c1y;
                                        c1rA09 = c1y.A09();
                                        c2 = 3;
                                        break;
                                    case 3:
                                        C1Y c1y2 = c1y;
                                        c1y2.A0B(c1y2.A01, c1rA09);
                                        return;
                                    case 4:
                                        c1y = c1y;
                                        c1y.A01.put(A03(0, 16, 110), String.valueOf(true));
                                        c2 = 3;
                                        break;
                                }
                            }
                        }
                    };
                }
                return null;
            case 1:
                return z2 ? new C01781a(context, km, str, uri, map) : new C1X(context, km, str, uri, map, c01831fA00, z) { // from class: com.facebook.ads.redexgen.X.1b
                    private static byte[] A02;
                    private static final String A03;
                    private final Uri A00;
                    private final Map<String, String> A01;

                    private static String A00(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                        int i4 = 0;
                        char c2 = 2;
                        while (true) {
                            switch (c2) {
                                case 2:
                                    bArrCopyOfRange = bArrCopyOfRange;
                                    if (i4 >= bArrCopyOfRange.length) {
                                        c2 = 4;
                                        break;
                                    } else {
                                        c2 = 3;
                                        break;
                                    }
                                case 3:
                                    bArrCopyOfRange = bArrCopyOfRange;
                                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
                                    i4++;
                                    c2 = 2;
                                    break;
                                case 4:
                                    return new String(bArrCopyOfRange);
                            }
                        }
                    }

                    private static void A01() {
                        A02 = new byte[]{0, 39, 47, 42, 35, 34, 102, 50, 41, 102, 41, 54, 35, 40, 102, 42, 47, 40, 45, 102, 51, 52, 42, 124, 102, 19, 22, 17, 20};
                    }

                    static {
                        A01();
                        A03 = C01791b.class.getSimpleName();
                    }

                    {
                        this.A00 = uri;
                        this.A01 = map;
                    }

                    @Override // com.facebook.ads.redexgen.X.C1S
                    @Nullable
                    public final C1R A09() {
                        try {
                            C0784Ot.A08(new C0784Ot(), ((C1S) this).A00, Uri.parse(this.A00.getQueryParameter(A00(25, 4, 119))), this.A02);
                            return null;
                        } catch (Exception unused) {
                            String str2 = A00(0, 25, 78) + this.A00.toString();
                            return C1R.A02;
                        }
                    }

                    @Override // com.facebook.ads.redexgen.X.C1X
                    public final void A0A() {
                        C1R c1rA09 = null;
                        if (((C1X) this).A01) {
                            c1rA09 = A09();
                        }
                        A0B(this.A01, c1rA09);
                    }
                };
            case 2:
                return new C1S(context, km, str, uri, map) { // from class: com.facebook.ads.redexgen.X.1c
                    private static byte[] A02;
                    private static final String A03;
                    private final Uri A00;
                    private final Map<String, String> A01;

                    private static String A00(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                        int i4 = 0;
                        char c2 = 2;
                        while (true) {
                            switch (c2) {
                                case 2:
                                    bArrCopyOfRange = bArrCopyOfRange;
                                    if (i4 >= bArrCopyOfRange.length) {
                                        c2 = 4;
                                        break;
                                    } else {
                                        c2 = 3;
                                        break;
                                    }
                                case 3:
                                    bArrCopyOfRange = bArrCopyOfRange;
                                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
                                    i4++;
                                    c2 = 2;
                                    break;
                                case 4:
                                    return new String(bArrCopyOfRange);
                            }
                        }
                    }

                    private static void A01() {
                        A02 = new byte[]{3, 8, -1, -12, -80, -78, -87, -81, -78, -87, -76, -71};
                    }

                    static {
                        A01();
                        A03 = C01801c.class.getSimpleName();
                    }

                    {
                        this.A00 = uri;
                        this.A01 = map;
                    }

                    @Override // com.facebook.ads.redexgen.X.C1S
                    public final void A02() {
                        KR kr = KR.A04;
                        String queryParameter = this.A00.getQueryParameter(A00(4, 8, 7));
                        if (!TextUtils.isEmpty(queryParameter)) {
                            try {
                                kr = KR.values()[Integer.valueOf(queryParameter).intValue()];
                            } catch (Exception unused) {
                            }
                        }
                        super.A01.A4N(this.A02, this.A01, this.A00.getQueryParameter(A00(0, 4, 86)), kr);
                    }
                };
            default:
                return new C1S(context, km, str, uri) { // from class: com.facebook.ads.redexgen.X.1d
                    private static byte[] A01;
                    private static final String A02;
                    private final Uri A00;

                    private static String A00(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                        int i4 = 0;
                        char c2 = 2;
                        while (true) {
                            switch (c2) {
                                case 2:
                                    bArrCopyOfRange = bArrCopyOfRange;
                                    if (i4 >= bArrCopyOfRange.length) {
                                        c2 = 4;
                                        break;
                                    } else {
                                        c2 = 3;
                                        break;
                                    }
                                case 3:
                                    bArrCopyOfRange = bArrCopyOfRange;
                                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
                                    i4++;
                                    c2 = 2;
                                    break;
                                case 4:
                                    return new String(bArrCopyOfRange);
                            }
                        }
                    }

                    private static void A01() {
                        A01 = new byte[]{2, 37, 45, 40, 33, 32, 100, 48, 43, 100, 43, 52, 33, 42, 100, 40, 45, 42, 47, 100, 49, 54, 40, 126, 100, 24, 15, 14, 3, 24, 15, 9, 30, 11, 9, 30, 3, 5, 4, 112, 106};
                    }

                    static {
                        A01();
                        A02 = C01811d.class.getSimpleName();
                    }

                    {
                        this.A00 = uri;
                    }

                    @Override // com.facebook.ads.redexgen.X.C1S
                    public final void A02() {
                        try {
                            Log.w(A00(25, 16, 125), this.A00.toString());
                            C0784Ot.A08(new C0784Ot(), super.A00, this.A00, this.A02);
                        } catch (Exception unused) {
                            String str2 = A00(0, 25, 115) + this.A00.toString();
                        }
                    }
                };
        }
    }

    public static boolean A04(String str) {
        boolean z = false;
        char c = !A02(56, 5, 18).equalsIgnoreCase(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!A02(74, 9, 14).equalsIgnoreCase(str)) {
                        c = 5;
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
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
