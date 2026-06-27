package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.util.SimpleArrayMap;
import android.view.View;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbyt {
    private Bundle extras;
    private zzaea zzcyo;
    private List<zzadw> zzend;
    private double zzeng;
    private IObjectWrapper zzfih;
    private int zzfog;
    private zzaar zzfoh;
    private View zzfoi;
    private zzabj zzfoj;
    private zzbgz zzfok;
    private zzbgz zzfol;
    private View zzfom;
    private IObjectWrapper zzfon;
    private zzaei zzfoo;
    private zzaei zzfop;
    private String zzfoq;
    private float zzfot;
    private SimpleArrayMap<String, zzadw> zzfor = new SimpleArrayMap<>();
    private SimpleArrayMap<String, String> zzfos = new SimpleArrayMap<>();
    private List<zzabj> zzczc = Collections.emptyList();

    public final synchronized void zzdn(int i) {
        this.zzfog = i;
    }

    public final synchronized void zzb(zzaar zzaarVar) {
        this.zzfoh = zzaarVar;
    }

    public final synchronized void zza(zzaea zzaeaVar) {
        this.zzcyo = zzaeaVar;
    }

    public final synchronized void setImages(List<zzadw> list) {
        this.zzend = list;
    }

    public final synchronized void zze(List<zzabj> list) {
        this.zzczc = list;
    }

    public final synchronized void zza(zzabj zzabjVar) {
        this.zzfoj = zzabjVar;
    }

    public final synchronized void zzz(View view) {
        this.zzfom = view;
    }

    public final synchronized void setStarRating(double d) {
        this.zzeng = d;
    }

    public final synchronized void zza(zzaei zzaeiVar) {
        this.zzfoo = zzaeiVar;
    }

    public final synchronized void zzb(zzaei zzaeiVar) {
        this.zzfop = zzaeiVar;
    }

    public final synchronized void zzfl(String str) {
        this.zzfoq = str;
    }

    public final synchronized void zzh(zzbgz zzbgzVar) {
        this.zzfok = zzbgzVar;
    }

    public final synchronized void zzi(zzbgz zzbgzVar) {
        this.zzfol = zzbgzVar;
    }

    public final synchronized void zzan(IObjectWrapper iObjectWrapper) {
        this.zzfih = iObjectWrapper;
    }

    public final synchronized void zzp(String str, String str2) {
        if (str2 == null) {
            this.zzfos.remove(str);
        } else {
            this.zzfos.put(str, str2);
        }
    }

    public final synchronized void zza(String str, zzadw zzadwVar) {
        if (zzadwVar == null) {
            this.zzfor.remove(str);
        } else {
            this.zzfor.put(str, zzadwVar);
        }
    }

    private final synchronized void zzf(float f) {
        this.zzfot = f;
    }

    private final synchronized String zzfm(String str) {
        return this.zzfos.get(str);
    }

    public final synchronized int zzahv() {
        return this.zzfog;
    }

    public final synchronized zzaar getVideoController() {
        return this.zzfoh;
    }

    public final synchronized zzaea zzrj() {
        return this.zzcyo;
    }

    public final synchronized View zzahw() {
        return this.zzfoi;
    }

    public final synchronized String getHeadline() {
        return zzfm("headline");
    }

    public final synchronized List<zzadw> getImages() {
        return this.zzend;
    }

    public final synchronized List<zzabj> getMuteThisAdReasons() {
        return this.zzczc;
    }

    public final synchronized zzabj zzahx() {
        return this.zzfoj;
    }

    public final synchronized String getBody() {
        return zzfm(TtmlNode.TAG_BODY);
    }

    public final synchronized Bundle getExtras() {
        if (this.extras == null) {
            this.extras = new Bundle();
        }
        return this.extras;
    }

    public final synchronized String getCallToAction() {
        return zzfm("call_to_action");
    }

    public final synchronized View zzahy() {
        return this.zzfom;
    }

    public final synchronized IObjectWrapper zzrk() {
        return this.zzfon;
    }

    public final synchronized String getStore() {
        return zzfm("store");
    }

    public final synchronized String getPrice() {
        return zzfm("price");
    }

    public final synchronized double getStarRating() {
        return this.zzeng;
    }

    public final synchronized zzaei zzri() {
        return this.zzfoo;
    }

    public final synchronized String getAdvertiser() {
        return zzfm("advertiser");
    }

    public final synchronized zzaei zzrl() {
        return this.zzfop;
    }

    public final synchronized String getCustomTemplateId() {
        return this.zzfoq;
    }

    public final synchronized zzbgz zzahz() {
        return this.zzfok;
    }

    public final synchronized zzbgz zzaia() {
        return this.zzfol;
    }

    public final synchronized IObjectWrapper zzaib() {
        return this.zzfih;
    }

    public final synchronized SimpleArrayMap<String, zzadw> zzaic() {
        return this.zzfor;
    }

    public final synchronized float zzsq() {
        return this.zzfot;
    }

    public final synchronized SimpleArrayMap<String, String> zzaid() {
        return this.zzfos;
    }

    public final synchronized void destroy() {
        if (this.zzfok != null) {
            this.zzfok.destroy();
            this.zzfok = null;
        }
        if (this.zzfol != null) {
            this.zzfol.destroy();
            this.zzfol = null;
        }
        this.zzfih = null;
        this.zzfor.clear();
        this.zzfos.clear();
        this.zzfoh = null;
        this.zzcyo = null;
        this.zzfoi = null;
        this.zzend = null;
        this.extras = null;
        this.zzfom = null;
        this.zzfon = null;
        this.zzfoo = null;
        this.zzfop = null;
        this.zzfoq = null;
    }

    public static zzbyt zza(zzand zzandVar) {
        try {
            zzaar videoController = zzandVar.getVideoController();
            zzaea zzaeaVarZzrj = zzandVar.zzrj();
            View view = (View) zzao(zzandVar.zzso());
            String headline = zzandVar.getHeadline();
            List<zzadw> images = zzandVar.getImages();
            String body = zzandVar.getBody();
            Bundle extras = zzandVar.getExtras();
            String callToAction = zzandVar.getCallToAction();
            View view2 = (View) zzao(zzandVar.zzsp());
            IObjectWrapper iObjectWrapperZzrk = zzandVar.zzrk();
            String advertiser = zzandVar.getAdvertiser();
            zzaei zzaeiVarZzrl = zzandVar.zzrl();
            zzbyt zzbytVar = new zzbyt();
            zzbytVar.zzfog = 1;
            zzbytVar.zzfoh = videoController;
            zzbytVar.zzcyo = zzaeaVarZzrj;
            zzbytVar.zzfoi = view;
            zzbytVar.zzp("headline", headline);
            zzbytVar.zzend = images;
            zzbytVar.zzp(TtmlNode.TAG_BODY, body);
            zzbytVar.extras = extras;
            zzbytVar.zzp("call_to_action", callToAction);
            zzbytVar.zzfom = view2;
            zzbytVar.zzfon = iObjectWrapperZzrk;
            zzbytVar.zzp("advertiser", advertiser);
            zzbytVar.zzfop = zzaeiVarZzrl;
            return zzbytVar;
        } catch (RemoteException e) {
            zzbad.zzd("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    public static zzbyt zza(zzana zzanaVar) {
        try {
            zzaar videoController = zzanaVar.getVideoController();
            zzaea zzaeaVarZzrj = zzanaVar.zzrj();
            View view = (View) zzao(zzanaVar.zzso());
            String headline = zzanaVar.getHeadline();
            List<zzadw> images = zzanaVar.getImages();
            String body = zzanaVar.getBody();
            Bundle extras = zzanaVar.getExtras();
            String callToAction = zzanaVar.getCallToAction();
            View view2 = (View) zzao(zzanaVar.zzsp());
            IObjectWrapper iObjectWrapperZzrk = zzanaVar.zzrk();
            String store = zzanaVar.getStore();
            String price = zzanaVar.getPrice();
            double starRating = zzanaVar.getStarRating();
            zzaei zzaeiVarZzri = zzanaVar.zzri();
            zzbyt zzbytVar = new zzbyt();
            zzbytVar.zzfog = 2;
            zzbytVar.zzfoh = videoController;
            zzbytVar.zzcyo = zzaeaVarZzrj;
            zzbytVar.zzfoi = view;
            zzbytVar.zzp("headline", headline);
            zzbytVar.zzend = images;
            zzbytVar.zzp(TtmlNode.TAG_BODY, body);
            zzbytVar.extras = extras;
            zzbytVar.zzp("call_to_action", callToAction);
            zzbytVar.zzfom = view2;
            zzbytVar.zzfon = iObjectWrapperZzrk;
            zzbytVar.zzp("store", store);
            zzbytVar.zzp("price", price);
            zzbytVar.zzeng = starRating;
            zzbytVar.zzfoo = zzaeiVarZzri;
            return zzbytVar;
        } catch (RemoteException e) {
            zzbad.zzd("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    public static zzbyt zzb(zzang zzangVar) {
        try {
            return zza(zzangVar.getVideoController(), zzangVar.zzrj(), (View) zzao(zzangVar.zzso()), zzangVar.getHeadline(), zzangVar.getImages(), zzangVar.getBody(), zzangVar.getExtras(), zzangVar.getCallToAction(), (View) zzao(zzangVar.zzsp()), zzangVar.zzrk(), zzangVar.getStore(), zzangVar.getPrice(), zzangVar.getStarRating(), zzangVar.zzri(), zzangVar.getAdvertiser(), zzangVar.zzsq());
        } catch (RemoteException e) {
            zzbad.zzd("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public static zzbyt zzb(zzana zzanaVar) {
        try {
            return zza(zzanaVar.getVideoController(), zzanaVar.zzrj(), (View) zzao(zzanaVar.zzso()), zzanaVar.getHeadline(), zzanaVar.getImages(), zzanaVar.getBody(), zzanaVar.getExtras(), zzanaVar.getCallToAction(), (View) zzao(zzanaVar.zzsp()), zzanaVar.zzrk(), zzanaVar.getStore(), zzanaVar.getPrice(), zzanaVar.getStarRating(), zzanaVar.zzri(), null, 0.0f);
        } catch (RemoteException e) {
            zzbad.zzd("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static zzbyt zzb(zzand zzandVar) {
        try {
            return zza(zzandVar.getVideoController(), zzandVar.zzrj(), (View) zzao(zzandVar.zzso()), zzandVar.getHeadline(), zzandVar.getImages(), zzandVar.getBody(), zzandVar.getExtras(), zzandVar.getCallToAction(), (View) zzao(zzandVar.zzsp()), zzandVar.zzrk(), null, null, -1.0d, zzandVar.zzrl(), zzandVar.getAdvertiser(), 0.0f);
        } catch (RemoteException e) {
            zzbad.zzd("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    private static zzbyt zza(zzaar zzaarVar, zzaea zzaeaVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzaei zzaeiVar, String str6, float f) {
        zzbyt zzbytVar = new zzbyt();
        zzbytVar.zzfog = 6;
        zzbytVar.zzfoh = zzaarVar;
        zzbytVar.zzcyo = zzaeaVar;
        zzbytVar.zzfoi = view;
        zzbytVar.zzp("headline", str);
        zzbytVar.zzend = list;
        zzbytVar.zzp(TtmlNode.TAG_BODY, str2);
        zzbytVar.extras = bundle;
        zzbytVar.zzp("call_to_action", str3);
        zzbytVar.zzfom = view2;
        zzbytVar.zzfon = iObjectWrapper;
        zzbytVar.zzp("store", str4);
        zzbytVar.zzp("price", str5);
        zzbytVar.zzeng = d;
        zzbytVar.zzfoo = zzaeiVar;
        zzbytVar.zzp("advertiser", str6);
        zzbytVar.zzf(f);
        return zzbytVar;
    }

    private static <T> T zzao(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.unwrap(iObjectWrapper);
    }
}
