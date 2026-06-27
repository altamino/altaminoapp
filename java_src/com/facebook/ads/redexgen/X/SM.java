package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SM extends AsyncTask<String, Void, Bitmap[]> {
    private static byte[] A0A;
    private int A00;
    private int A01;
    private InterfaceC02072d A02;
    private boolean A03;
    private final int A04;
    private final int A05;

    @Nullable
    private final WeakReference<SJ> A06;
    private final WeakReference<Context> A07;

    @Nullable
    private final WeakReference<ImageView> A08;

    @Nullable
    private final WeakReference<ViewGroup> A09;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 42);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A0A = new byte[]{42, 40, 35, 40, 63, 36, 46};
    }

    public SM(ViewGroup viewGroup) {
        this(viewGroup, 12, 16);
    }

    private SM(ViewGroup viewGroup, int i, int i2) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(viewGroup.getContext());
        this.A06 = null;
        this.A08 = null;
        this.A09 = new WeakReference<>(viewGroup);
        this.A04 = i;
        this.A05 = i2;
    }

    public SM(ImageView imageView) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(imageView.getContext());
        this.A06 = null;
        this.A08 = new WeakReference<>(imageView);
        this.A09 = null;
        this.A04 = 0;
        this.A05 = 1;
    }

    public SM(SJ sj) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(sj.getContext());
        this.A06 = new WeakReference<>(sj);
        this.A08 = null;
        this.A09 = null;
        this.A04 = 12;
        this.A05 = 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.AsyncTask
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(Bitmap[] bitmapArr) {
        SM sm = this;
        InterfaceC02072d interfaceC02072d = null;
        ImageView imageView = null;
        boolean z = false;
        SJ sj = null;
        Object[] objArr = 0;
        char c = sm.A08 != null ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    sm = sm;
                    bitmapArr = bitmapArr;
                    imageView = sm.A08.get();
                    if (bitmapArr[1] == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sm = sm;
                    if (!sm.A03) {
                        c = 4;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 4:
                    sm = sm;
                    if (sm.A04 == 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    imageView = imageView;
                    if (imageView == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    bitmapArr = bitmapArr;
                    imageView = imageView;
                    imageView.setImageBitmap(bitmapArr[1]);
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    imageView = imageView;
                    if (imageView == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    bitmapArr = bitmapArr;
                    imageView = imageView;
                    objArr = 0;
                    imageView.setImageBitmap(bitmapArr[0]);
                    c = '\n';
                    break;
                case '\n':
                    sm = sm;
                    if (sm.A06 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    sm = sm;
                    sj = sm.A06.get();
                    if (sj == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    bitmapArr = bitmapArr;
                    sj = sj;
                    sj.setImage(bitmapArr[objArr == true ? 1 : 0], bitmapArr[1]);
                    c = '\r';
                    break;
                case '\r':
                    sm = sm;
                    if (sm.A09 == null) {
                        c = 17;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    sm = sm;
                    if (sm.A09.get() == null) {
                        c = 17;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    bitmapArr = bitmapArr;
                    if (bitmapArr[1] == null) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    sm = sm;
                    bitmapArr = bitmapArr;
                    OY.A0S(sm.A09.get(), new BitmapDrawable(sm.A07.get().getResources(), bitmapArr[1]));
                    c = 17;
                    break;
                case 17:
                    sm = sm;
                    if (sm.A02 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    sm = sm;
                    bitmapArr = bitmapArr;
                    interfaceC02072d = sm.A02;
                    if (bitmapArr[objArr == true ? 1 : 0] == null) {
                        c = 21;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    z = true;
                    c = 20;
                    break;
                case 20:
                    interfaceC02072d = interfaceC02072d;
                    interfaceC02072d.A5P(z);
                    c = 7;
                    break;
                case 21:
                    z = objArr == true ? 1 : 0;
                    c = 20;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final Bitmap[] doInBackground(String... strArr) {
        String str = strArr[0];
        Bitmap bitmapA0N = null;
        Bitmap bitmapA01 = null;
        Context context = this.A07.get();
        if (context == null) {
            return new Bitmap[]{null, null};
        }
        try {
            bitmapA0N = new C0607Ht(context).A0N(str, this.A00, this.A01);
            if (bitmapA0N != null && !this.A03) {
                bitmapA01 = C0767Oc.A01(context, bitmapA0N, this.A04, this.A05);
            }
        } catch (Throwable th) {
            P7.A07(context, A00(0, 7, 103), P8.A15, new PA(th));
        }
        return new Bitmap[]{bitmapA0N, bitmapA01};
    }

    public final SM A04() {
        this.A00 = -1;
        this.A01 = -1;
        return this;
    }

    public final SM A05(int i, int i2) {
        this.A00 = i;
        this.A01 = i2;
        return this;
    }

    public final SM A06(InterfaceC02072d interfaceC02072d) {
        this.A02 = interfaceC02072d;
        return this;
    }

    public final void A07(String str) {
        SM sm = this;
        char c = TextUtils.isEmpty(str) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    sm = sm;
                    if (sm.A02 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sm = sm;
                    sm.A02.A5P(false);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    sm = sm;
                    str = str;
                    sm.executeOnExecutor(O4.A05, str);
                    c = 4;
                    break;
            }
        }
    }
}
