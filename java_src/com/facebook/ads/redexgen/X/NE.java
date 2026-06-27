package com.facebook.ads.redexgen.X;

import java.io.File;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class NE implements Callable<Void> {
    private final File A00;
    public final /* synthetic */ NF A01;

    public NE(NF nf, File file) {
        this.A01 = nf;
        this.A00 = file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Void call() throws Exception {
        this.A01.A04(this.A00);
        return null;
    }
}
