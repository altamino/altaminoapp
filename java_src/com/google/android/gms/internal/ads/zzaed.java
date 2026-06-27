package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzaed extends NativeAd.AdChoicesInfo {
    private String zzbhy;
    private final List<NativeAd.Image> zzcyd = new ArrayList();
    private final zzaea zzcyo;

    public zzaed(zzaea zzaeaVar) {
        zzaei zzaekVar;
        IBinder iBinder;
        this.zzcyo = zzaeaVar;
        try {
            this.zzbhy = this.zzcyo.getText();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
            this.zzbhy = "";
        }
        try {
            for (zzaei zzaeiVar : zzaeaVar.zzra()) {
                if (!(zzaeiVar instanceof IBinder) || (iBinder = (IBinder) zzaeiVar) == null) {
                    zzaekVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzaekVar = iInterfaceQueryLocalInterface instanceof zzaei ? (zzaei) iInterfaceQueryLocalInterface : new zzaek(iBinder);
                }
                if (zzaekVar != null) {
                    this.zzcyd.add(new zzael(zzaekVar));
                }
            }
        } catch (RemoteException e2) {
            zzbad.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzbhy;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzcyd;
    }
}
