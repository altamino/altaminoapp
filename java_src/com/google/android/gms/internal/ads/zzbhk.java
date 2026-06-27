package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzbhk extends FrameLayout implements zzbgz {
    private final zzbgz zzekj;
    private final zzbcw zzekk;
    private final AtomicBoolean zzekl;

    public zzbhk(zzbgz zzbgzVar) {
        super(zzbgzVar.getContext());
        this.zzekl = new AtomicBoolean();
        this.zzekj = zzbgzVar;
        this.zzekk = new zzbcw(zzbgzVar.zzaad(), this, this);
        addView(this.zzekj.getView());
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbih
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final zzbcw zzya() {
        return this.zzekk;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void onPause() {
        this.zzekk.onPause();
        this.zzekj.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaao() {
        this.zzekk.onDestroy();
        this.zzekj.zzaao();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaau() {
        setBackgroundColor(0);
        this.zzekj.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int zzyi() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int zzyj() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zzyk() {
        this.zzekj.zzyk();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final WebView getWebView() {
        return this.zzekj.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, Map<String, ?> map) {
        this.zzekj.zza(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, JSONObject jSONObject) {
        this.zzekj.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(String str, zzaho<? super zzbgz> zzahoVar) {
        this.zzekj.zza(str, zzahoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzb(String str, zzaho<? super zzbgz> zzahoVar) {
        this.zzekj.zzb(str, zzahoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(String str, Predicate<zzaho<? super zzbgz>> predicate) {
        this.zzekj.zza(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaab() {
        this.zzekj.zzaab();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzdi(int i) {
        this.zzekj.zzdi(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zztl() {
        this.zzekj.zztl();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaac() {
        this.zzekj.zzaac();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zza(boolean z, long j) {
        this.zzekj.zza(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final void zzco(String str) {
        this.zzekj.zzco(str);
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final void zzb(String str, JSONObject jSONObject) {
        this.zzekj.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf, com.google.android.gms.internal.ads.zzbhx
    public final Activity zzyd() {
        return this.zzekj.zzyd();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final Context zzaad() {
        return this.zzekj.zzaad();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final com.google.android.gms.ads.internal.zza zzye() {
        return this.zzekj.zzye();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final com.google.android.gms.ads.internal.overlay.zzd zzaae() {
        return this.zzekj.zzaae();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final IObjectWrapper zzaam() {
        return this.zzekj.zzaam();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final com.google.android.gms.ads.internal.overlay.zzd zzaaf() {
        return this.zzekj.zzaaf();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbie
    public final zzbin zzaag() {
        return this.zzekj.zzaag();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final String zzaah() {
        return this.zzekj.zzaah();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final zzbii zzaai() {
        return this.zzekj.zzaai();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final WebViewClient zzaaj() {
        return this.zzekj.zzaaj();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzaak() {
        return this.zzekj.zzaak();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbif
    public final zzdh zzaal() {
        return this.zzekj.zzaal();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf, com.google.android.gms.internal.ads.zzbig
    public final zzbai zzyh() {
        return this.zzekj.zzyh();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbhy
    public final boolean zzaan() {
        return this.zzekj.zzaan();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean isDestroyed() {
        return this.zzekj.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzaap() {
        return this.zzekj.zzaap();
    }

    @Override // com.google.android.gms.ads.internal.zzj
    public final void zzld() {
        this.zzekj.zzld();
    }

    @Override // com.google.android.gms.ads.internal.zzj
    public final void zzlc() {
        this.zzekj.zzlc();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final String zzyf() {
        return this.zzekj.zzyf();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final zzadg zzyc() {
        return this.zzekj.zzyc();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final zzadh zzyg() {
        return this.zzekj.zzyg();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final zzbhq zzyb() {
        return this.zzekj.zzyb();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzekj.zza(zzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzam(IObjectWrapper iObjectWrapper) {
        this.zzekj.zzam(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(zzbin zzbinVar) {
        this.zzekj.zza(zzbinVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaq(boolean z) {
        this.zzekj.zzaq(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaar() {
        this.zzekj.zzaar();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzbn(Context context) {
        this.zzekj.zzbn(context);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaf(boolean z) {
        this.zzekj.zzaf(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void setRequestedOrientation(int i) {
        this.zzekj.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzb(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzekj.zzb(zzdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzar(boolean z) {
        this.zzekj.zzar(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final void zza(String str, zzbft zzbftVar) {
        this.zzekj.zza(str, zzbftVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final zzbft zzet(String str) {
        return this.zzekj.zzet(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaas() {
        this.zzekj.zzaas();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void destroy() {
        IObjectWrapper iObjectWrapperZzaam = zzaam();
        if (iObjectWrapperZzaam != null) {
            com.google.android.gms.ads.internal.zzk.zzlv().zzab(iObjectWrapperZzaam);
            zzaxi.zzdvv.postDelayed(new zzbhl(this), ((Integer) zzyt.zzpe().zzd(zzacu.zzcuv)).intValue());
            return;
        }
        this.zzekj.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void loadData(String str, String str2, String str3) {
        this.zzekj.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zzekj.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void loadUrl(String str) {
        this.zzekj.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzb(String str, String str2, String str3) {
        this.zzekj.zzb(str, str2, str3);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbgz
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzekj.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbgz
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zzekj.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zzekj.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zzekj.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void onResume() {
        this.zzekj.onResume();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzaav() {
        TextView textView = new TextView(getContext());
        Resources resources = com.google.android.gms.ads.internal.zzk.zzlk().getResources();
        textView.setText(resources != null ? resources.getString(R.string.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setBackground(gradientDrawable);
        } else {
            textView.setBackgroundDrawable(gradientDrawable);
        }
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzat(boolean z) {
        this.zzekj.zzat(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(zzadv zzadvVar) {
        this.zzekj.zza(zzadvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zza(zzud zzudVar) {
        this.zzekj.zza(zzudVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zza(zzadx zzadxVar) {
        this.zzekj.zza(zzadxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final zzadx zzaat() {
        return this.zzekj.zzaat();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz, com.google.android.gms.internal.ads.zzbdf
    public final void zza(zzbhq zzbhqVar) {
        this.zzekj.zza(zzbhqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzaaq() {
        return this.zzekj.zzaaq();
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final void zzas(boolean z) {
        this.zzekj.zzas(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zzao(boolean z) {
        this.zzekj.zzao(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zztm() {
        this.zzekj.zztm();
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        this.zzekj.zza(zzcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zzc(boolean z, int i) {
        this.zzekj.zzc(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(boolean z, int i, String str) {
        this.zzekj.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void zza(boolean z, int i, String str, String str2) {
        this.zzekj.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzb(boolean z, int i) {
        if (!this.zzekl.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcoo)).booleanValue()) {
            return false;
        }
        removeView(this.zzekj.getView());
        return this.zzekj.zzb(z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final boolean zzaaw() {
        return this.zzekl.get();
    }
}
