package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.internal.ads.zzbhx;
import com.google.android.gms.internal.ads.zzbif;
import com.google.android.gms.internal.ads.zzbih;

@zzard
@TargetApi(17)
/* loaded from: classes2.dex */
public final class zzbht<WebViewT extends zzbhx & zzbif & zzbih> {
    private final zzbhw zzemd;
    private final WebViewT zzeme;

    public static zzbht<zzbgz> zzc(final zzbgz zzbgzVar) {
        return new zzbht<>(zzbgzVar, new zzbhw(zzbgzVar) { // from class: com.google.android.gms.internal.ads.zzbhu
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbhw
            public final void zzh(Uri uri) {
                zzbii zzbiiVarZzaai = this.zzemf.zzaai();
                if (zzbiiVarZzaai == null) {
                    zzbad.zzen("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                } else {
                    zzbiiVarZzaai.zzh(uri);
                }
            }
        });
    }

    private zzbht(WebViewT webviewt, zzbhw zzbhwVar) {
        this.zzemd = zzbhwVar;
        this.zzeme = webviewt;
    }

    @JavascriptInterface
    public final void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzbad.zzep("URL is empty, ignoring message");
        } else {
            zzaxi.zzdvv.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzbhv
                private final String zzdbk;
                private final zzbht zzemg;

                {
                    this.zzemg = this;
                    this.zzdbk = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzemg.zzff(this.zzdbk);
                }
            });
        }
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zzawz.zzds("Click string is empty, not proceeding.");
            return "";
        }
        zzdh zzdhVarZzaal = this.zzeme.zzaal();
        if (zzdhVarZzaal == null) {
            zzawz.zzds("Signal utils is empty, ignoring.");
            return "";
        }
        zzdc zzdcVarZzcg = zzdhVarZzaal.zzcg();
        if (zzdcVarZzcg == null) {
            zzawz.zzds("Signals object is empty, ignoring.");
            return "";
        }
        if (this.zzeme.getContext() == null) {
            zzawz.zzds("Context is null, ignoring.");
            return "";
        }
        return zzdcVarZzcg.zza(this.zzeme.getContext(), str, this.zzeme.getView(), this.zzeme.zzyd());
    }

    final /* synthetic */ void zzff(String str) {
        this.zzemd.zzh(Uri.parse(str));
    }
}
