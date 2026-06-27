package com.facebook.ads.redexgen.X;

import android.app.AlertDialog;
import android.content.Context;
import android.widget.EditText;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class P0 implements InterfaceC0790Oz {
    private static byte[] A04;
    private JJ A00;
    private MQ A01;
    private InterfaceC02855d A02;
    private final Executor A03;

    static {
        A06();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A04 = new byte[]{-77, -60, -67, -48, 124, -92, -67, -52, -52, -63, -54, -63, -64, -101, -41, -32, -35, -39, -30, -24, -45, -24, -35, -31, -39, 78, 81, 75, 81, 77, 75, 81, 76, 72, 81, 81, 79, 81, 72, 73, -108, 81, 122, 126, 74, 81, 121, 73, 126, 74, 79, 76, 77, 79, 76, 78, 121, 78, 123, 78, 72, 124, 79, 72, 79, 126, 77, 122, 123, 74, 75, 123, 74, -19, -27, -12, -31, -28, -31, -12, -31, -69, -71, -85, -72, -91, -81, -86, -85, -76, -70, -81, -84, -81, -85, -72, -33, -31, -31, -29, -15, -15, -35, -14, -19, -23, -29, -20, 123, -103, -90, -101, -99, -92, -109, -102, -104, -111, -108, -106, -107, -109, -111, -103, -103, -106, -107, -108, -107, -49, -53, -43, -59, -63, -53, -48, -56, -47, 111, 116, 116, 110, 113, 118, 110, 112, 115, 111, 112, 109, 116, 110, 111, -26, -28, -9, -24, -22, -14, -11, -4, -30, -20, -25, -70, -69, -55, -71, -56, -65, -58, -54, -65, -59, -60, -102, -93, -96, -100, -91, -85, -106, -85, -90, -94, -100, -91, -100, -88, -89, -97, -94, -96, -104, -94, -99, -65, -45, -21, -110, -31, -26, -38, -41, -28, -27, -110, -34, -31, -39, -37, -32, -110, -45, -27, -110, -21, -31, -25, -110, -26, -31, -110, -42, -41, -44, -25, -39, -79, -110, -70, -31, -23, -110, -42, -31, -110, -21, -31, -25, -110, -28, -41, -30, -28, -31, -42, -25, -43, -41, -110, -26, -38, -41, -110, -37, -27, -27, -25, -41, -79, -112, -94, -85, -95, 93, -113, -94, -83, -84, -81, -79};
    }

    public P0(Executor executor, JJ jj, Context context) {
        if (K1.A17(context)) {
            this.A02 = C0780Op.A05(context);
        } else {
            this.A01 = C0780Op.A01(context);
        }
        this.A03 = executor;
        this.A00 = jj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A04(String str) {
        C0718Me miscInfo = new C0718Me();
        C0718Me requestParameters = new C0718Me();
        C0718Me c0718Me = new C0718Me();
        miscInfo.put(A02(81, 15, 57), AQ.A00().A02());
        miscInfo.put(A02(187, 9, 44), A02(114, 15, 84));
        miscInfo.put(A02(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 11, 118), A02(138, 15, 48));
        miscInfo.put(A02(96, 12, 113), A02(25, 48, 11));
        miscInfo.put(A02(14, 11, 103), (System.currentTimeMillis() / 1000) + A02(196, 0, 124));
        String strA07 = this.A00.A07();
        if (strA07 != null) {
            c0718Me.put(A02(175, 12, 42), strA07);
        }
        requestParameters.put(A02(164, 11, 73), str);
        requestParameters.put(A02(129, 9, 85), C0760Nv.A01(c0718Me));
        miscInfo.A04(A02(73, 8, 115), C0760Nv.A01(requestParameters));
        return miscInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(JJ jj) {
        this.A00 = jj;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0790Oz
    public final void A6G() {
        Context context = NR.A00();
        if (context == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(A02(0, 14, 79));
        EditText editText = new EditText(context);
        editText.setSingleLine(false);
        editText.setImeOptions(1073741824);
        editText.setHint(A02(196, 65, 101));
        editText.setMaxLines(2);
        editText.setMinLines(2);
        builder.setView(editText);
        builder.setNegativeButton(A02(108, 6, 43), new DialogInterfaceOnClickListenerC0787Ow(this));
        builder.setPositiveButton(A02(261, 11, 48), new DialogInterfaceOnClickListenerC0789Oy(this, editText));
        builder.create().show();
    }
}
