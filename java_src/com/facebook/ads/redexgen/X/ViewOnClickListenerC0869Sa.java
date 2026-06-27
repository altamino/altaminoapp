package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sa, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class ViewOnClickListenerC0869Sa extends SZ implements View.OnClickListener {

    @Nullable
    private String A00;

    @Nullable
    private String A01;
    private final SY A02;
    private final Map<String, String> A03;

    public ViewOnClickListenerC0869Sa(Context context, String str, C02282y c02282y, KM km, InterfaceC03688m interfaceC03688m, C6K c6k, OP op) {
        super(context, c02282y);
        this.A03 = new HashMap();
        this.A02 = new SY(context, str, c6k, op, km, interfaceC03688m);
        setOnClickListener(this);
        OY.A0H(1001, this);
    }

    public final boolean A00() {
        return this.A02.A0B();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC0869Sa viewOnClickListenerC0869Sa = this;
        char c = !TextUtils.isEmpty(viewOnClickListenerC0869Sa.A00) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    viewOnClickListenerC0869Sa = viewOnClickListenerC0869Sa;
                    if (!TextUtils.isEmpty(viewOnClickListenerC0869Sa.A01)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    viewOnClickListenerC0869Sa = viewOnClickListenerC0869Sa;
                    viewOnClickListenerC0869Sa.A02.A08(viewOnClickListenerC0869Sa.A00, viewOnClickListenerC0869Sa.A01, viewOnClickListenerC0869Sa.A03);
                    c = 3;
                    break;
            }
        }
    }

    public void setActionEnabled(boolean z) {
        this.A02.A0A(z);
    }

    public void setCta(C02292z c02292z, String str, Map<String, String> map) {
        setCta(c02292z, str, map, null);
    }

    public void setCta(C02292z c02292z, String str, Map<String, String> map, @Nullable SX sx) {
        ViewOnClickListenerC0869Sa viewOnClickListenerC0869Sa = this;
        viewOnClickListenerC0869Sa.A00 = str;
        viewOnClickListenerC0869Sa.A01 = c02292z.A04();
        Map<String, String> extraData = viewOnClickListenerC0869Sa.A03;
        extraData.putAll(map);
        viewOnClickListenerC0869Sa.A02.A07(sx);
        String strA03 = c02292z.A03();
        char c = !TextUtils.isEmpty(strA03) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    viewOnClickListenerC0869Sa = viewOnClickListenerC0869Sa;
                    if (!TextUtils.isEmpty(viewOnClickListenerC0869Sa.A01)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewOnClickListenerC0869Sa = viewOnClickListenerC0869Sa;
                    viewOnClickListenerC0869Sa.setVisibility(8);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    viewOnClickListenerC0869Sa = viewOnClickListenerC0869Sa;
                    strA03 = strA03;
                    viewOnClickListenerC0869Sa.setText(strA03);
                    c = 4;
                    break;
            }
        }
    }

    public void setIsInAppBrowser(boolean z) {
        this.A02.A09(z);
    }
}
