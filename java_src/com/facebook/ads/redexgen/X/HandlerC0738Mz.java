package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class HandlerC0738Mz extends Handler implements InterfaceC0723Mk {
    private final String A00;
    private final List<InterfaceC0723Mk> A01;

    public HandlerC0738Mz(String str, List<InterfaceC0723Mk> list) {
        super(Looper.getMainLooper());
        this.A00 = str;
        this.A01 = list;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0723Mk
    public final void A4z(File file, String str, int i) {
        Message messageObtainMessage = obtainMessage();
        messageObtainMessage.arg1 = i;
        messageObtainMessage.obj = file;
        sendMessage(messageObtainMessage);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        HandlerC0738Mz handlerC0738Mz = this;
        Iterator<InterfaceC0723Mk> it = handlerC0738Mz.A01.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    handlerC0738Mz = handlerC0738Mz;
                    message = message;
                    it = it;
                    it.next().A4z((File) message.obj, handlerC0738Mz.A00, message.arg1);
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }
}
