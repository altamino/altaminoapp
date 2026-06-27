package com.facebook.ads.redexgen.X;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Io, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0628Io implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ C0627In A00;

    public C0628Io(C0627In c0627In) {
        this.A00 = c0627In;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        new Handler(Looper.getMainLooper()).post(new C0629Ip(this, i));
    }
}
