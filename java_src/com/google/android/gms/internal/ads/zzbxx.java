package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbxx implements zzbzb {
    private final Clock zzbsa;
    private final zzbai zzbtc;
    private final zzdh zzeko;
    private final zzdae zzffb;
    private final zzbzc zzfgz;
    private final zzcxm zzfig;
    private final zzcxv zzfjp;
    private final JSONObject zzfmo;
    private final zzccj zzfmp;
    private final zzbyt zzfmq;
    private final zzbrt zzfmr;
    private final zzbri zzfms;
    private final zzbmn zzfmt;
    private final zzbzq zzfmu;
    private final zzbva zzfmv;
    private boolean zzfmx;
    private zzaag zzfne;
    private final Context zzlj;
    private boolean zzfmw = false;
    private boolean zzfmy = false;
    private boolean zzfmz = false;
    private Point zzfna = new Point();
    private Point zzfnb = new Point();
    private long zzfnc = 0;
    private long zzfnd = 0;

    public zzbxx(Context context, zzbzc zzbzcVar, JSONObject jSONObject, zzccj zzccjVar, zzbyt zzbytVar, zzdh zzdhVar, zzbrt zzbrtVar, zzbri zzbriVar, zzcxm zzcxmVar, zzbai zzbaiVar, zzcxv zzcxvVar, zzbmn zzbmnVar, zzbzq zzbzqVar, Clock clock, zzbva zzbvaVar, zzdae zzdaeVar) {
        this.zzlj = context;
        this.zzfgz = zzbzcVar;
        this.zzfmo = jSONObject;
        this.zzfmp = zzccjVar;
        this.zzfmq = zzbytVar;
        this.zzeko = zzdhVar;
        this.zzfmr = zzbrtVar;
        this.zzfms = zzbriVar;
        this.zzfig = zzcxmVar;
        this.zzbtc = zzbaiVar;
        this.zzfjp = zzcxvVar;
        this.zzfmt = zzbmnVar;
        this.zzfmu = zzbzqVar;
        this.zzbsa = clock;
        this.zzfmv = zzbvaVar;
        this.zzffb = zzdaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.zzfna = new Point();
        this.zzfnb = new Point();
        if (!this.zzfmx) {
            this.zzfmv.zzq(view);
            this.zzfmx = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.zzfmt.zzq(this);
        if (map != null) {
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = it.next().getValue().get();
                if (view2 != null) {
                    view2.setOnTouchListener(onTouchListener);
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator<Map.Entry<String, WeakReference<View>>> it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = it2.next().getValue().get();
                if (view3 != null) {
                    view3.setOnTouchListener(onTouchListener);
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        this.zzfna = new Point();
        this.zzfnb = new Point();
        this.zzfmv.zzr(view);
        this.zzfmx = false;
    }

    private final boolean zzfh(String str) {
        JSONObject jSONObjectOptJSONObject = this.zzfmo.optJSONObject("allow_pub_event_reporting");
        return jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean(str, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) throws JSONException {
        JSONObject jSONObjectZza = zza(map, map2, view2);
        JSONObject jSONObjectZzs = zzs(view2);
        JSONObject jSONObjectZzt = zzt(view2);
        JSONObject jSONObjectZzu = zzu(view2);
        String strZzb = zzb(view, map);
        zza(view, jSONObjectZzs, jSONObjectZza, jSONObjectZzt, jSONObjectZzu, strZzb, zzfj(strZzb), null, z, false);
    }

    private final String zzb(View view, Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int iZzahv = this.zzfmq.zzahv();
        if (iZzahv == 1) {
            return "1099";
        }
        if (iZzahv == 2) {
            return "2099";
        }
        if (iZzahv == 3 || iZzahv != 6) {
            return null;
        }
        return "3099";
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzfi(String str) throws JSONException {
        zza(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzf(Bundle bundle) throws JSONException {
        if (bundle == null) {
            zzbad.zzdp("Click data is null. No click is reported.");
        } else if (!zzfh("click_reporting")) {
            zzbad.zzen("The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            zza(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, com.google.android.gms.ads.internal.zzk.zzlg().zza(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) throws JSONException {
        if (!this.zzfmz) {
            zzbad.zzdp("Custom click reporting failed. enableCustomClickGesture is not set.");
            return;
        }
        if (!zzahj()) {
            zzbad.zzdp("Custom click reporting failed. Ad unit id not whitelisted.");
            return;
        }
        JSONObject jSONObjectZza = zza(map, map2, view);
        JSONObject jSONObjectZzs = zzs(view);
        JSONObject jSONObjectZzt = zzt(view);
        JSONObject jSONObjectZzu = zzu(view);
        String strZzb = zzb(null, map);
        zza(view, jSONObjectZzs, jSONObjectZza, jSONObjectZzt, jSONObjectZzu, strZzb, zzfj(strZzb), null, z, true);
    }

    private final boolean zzahj() {
        return this.zzfmo.optBoolean("allow_custom_click_gesture", false);
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzro() {
        this.zzfmz = true;
    }

    private final void zza(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) throws JSONException {
        Preconditions.checkMainThread("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.zzfmo);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.zzfgz.zzfo(this.zzfmq.getCustomTemplateId()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.zzfmq.zzahv());
            jSONObject8.put("view_aware_api_used", z);
            jSONObject8.put("custom_mute_requested", this.zzfjp.zzdgs != null && this.zzfjp.zzdgs.zzbqh);
            jSONObject8.put("custom_mute_enabled", (this.zzfmq.getMuteThisAdReasons().isEmpty() || this.zzfmq.zzahx() == null) ? false : true);
            if (this.zzfmu.zzaiz() != null && this.zzfmo.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.zzbsa.currentTimeMillis());
            if (this.zzfmz && zzahj()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            jSONObject8.put("has_custom_click_handler", this.zzfgz.zzfo(this.zzfmq.getCustomTemplateId()) != null);
            jSONObject8.put("click_signals", zzv(view));
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long jCurrentTimeMillis = this.zzbsa.currentTimeMillis();
            jSONObject9.put("time_from_last_touch_down", jCurrentTimeMillis - this.zzfnc);
            jSONObject9.put("time_from_last_touch", jCurrentTimeMillis - this.zzfnd);
            jSONObject7.put("touch_signal", jSONObject9);
            zzbao.zza(this.zzfmp.zzc("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e) {
            zzbad.zzc("Unable to create click JSON.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, MotionEvent motionEvent, View view2) {
        int[] iArrZzw = zzw(view2);
        this.zzfna = new Point(((int) motionEvent.getRawX()) - iArrZzw[0], ((int) motionEvent.getRawY()) - iArrZzw[1]);
        long jCurrentTimeMillis = this.zzbsa.currentTimeMillis();
        this.zzfnd = jCurrentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.zzfnc = jCurrentTimeMillis;
            this.zzfnb = this.zzfna;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzfna;
        motionEventObtain.setLocation(point.x, point.y);
        this.zzeko.zza(motionEventObtain);
        motionEventObtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzg(Bundle bundle) {
        if (bundle == null) {
            zzbad.zzdp("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!zzfh("touch_reporting")) {
            zzbad.zzen("The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events.");
            return;
        }
        this.zzeko.zzcg().zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzahk() throws JSONException {
        zza((JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void setClickConfirmingView(View view) {
        if (!this.zzfmo.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzbad.zzep("setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzbzq zzbzqVar = this.zzfmu;
        if (view != null) {
            view.setOnClickListener(zzbzqVar);
            view.setClickable(true);
            zzbzqVar.zzfqe = new WeakReference<>(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(zzagd zzagdVar) {
        if (!this.zzfmo.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzbad.zzep("setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
        } else {
            this.zzfmu.zza(zzagdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void cancelUnconfirmedClick() {
        if (this.zzfmo.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.zzfmu.cancelUnconfirmedClick();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(zzaak zzaakVar) {
        try {
            if (this.zzfmy) {
                return;
            }
            if (zzaakVar == null && this.zzfmq.zzahx() != null) {
                this.zzfmy = true;
                this.zzffb.zzed(this.zzfmq.zzahx().zzpt());
                zzahl();
            } else {
                this.zzfmy = true;
                this.zzffb.zzed(zzaakVar.zzpt());
                zzahl();
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(zzaag zzaagVar) {
        this.zzfne = zzaagVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzahl() {
        try {
            if (this.zzfne != null) {
                this.zzfne.onAdMuted();
            }
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) throws JSONException {
        zza(zzs(view), zza(map, map2, view), zzt(view), zzu(view), (JSONObject) null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void zzahm() throws JSONException {
        Preconditions.checkMainThread("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzfmo);
            zzbao.zza(this.zzfmp.zzc("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            zzbad.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final boolean zzh(Bundle bundle) {
        if (!zzfh("impression_reporting")) {
            zzbad.zzen("The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events.");
            return false;
        }
        return zza((JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null, com.google.android.gms.ads.internal.zzk.zzlg().zza(bundle, (JSONObject) null));
    }

    private final boolean zza(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, JSONObject jSONObject5) throws JSONException {
        Preconditions.checkMainThread("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.zzfmo);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            zzbxy zzbxyVar = null;
            this.zzfmp.zza("/logScionEvent", new zzbxz(this));
            this.zzfmp.zza("/nativeImpression", new zzbya(this));
            zzbao.zza(this.zzfmp.zzc("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            boolean z = this.zzfmw;
            if (z || this.zzfig.zzgkj == null) {
                return true;
            }
            this.zzfmw = z | com.google.android.gms.ads.internal.zzk.zzlq().zzb(this.zzlj, this.zzbtc.zzbsx, this.zzfig.zzgkj.toString(), this.zzfjp.zzglb);
            return true;
        } catch (JSONException e) {
            zzbad.zzc("Unable to create impression JSON.", e);
            return false;
        }
    }

    private final JSONObject zzb(Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", zzdm(rect.right - rect.left));
        jSONObject.put("height", zzdm(rect.bottom - rect.top));
        jSONObject.put("x", zzdm(rect.left));
        jSONObject.put("y", zzdm(rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e9 A[Catch: JSONException -> 0x0105, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0105, blocks: (B:27:0x00d0, B:41:0x00f8, B:42:0x00fc, B:43:0x0101, B:32:0x00df, B:35:0x00e9), top: B:51:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0101 A[Catch: JSONException -> 0x0105, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0105, blocks: (B:27:0x00d0, B:41:0x00f8, B:42:0x00fc, B:43:0x0101, B:32:0x00df, B:35:0x00e9), top: B:51:0x00d0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final org.json.JSONObject zzs(android.view.View r14) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbxx.zzs(android.view.View):org.json.JSONObject");
    }

    private static JSONObject zzt(View view) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.zzk.zzlg();
            jSONObject.put("contained_in_scroll_view", zzaxi.zzp(view) != -1);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private final JSONObject zzu(View view) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.zzk.zzlg();
            jSONObject.put("can_show_on_lock_screen", zzaxi.zzo(view));
            com.google.android.gms.ads.internal.zzk.zzlg();
            jSONObject.put("is_keyguard_locked", zzaxi.zzat(this.zzlj));
        } catch (JSONException unused) {
            zzbad.zzep("Unable to get lock screen information");
        }
        return jSONObject;
    }

    private final JSONObject zza(Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) throws JSONException {
        String str;
        String str2;
        JSONObject jSONObject;
        String str3 = "ad_view";
        String str4 = "relative_to";
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int[] iArrZzw = zzw(view);
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, WeakReference<View>> next = it.next();
                View view2 = next.getValue().get();
                if (view2 != null) {
                    int[] iArrZzw2 = zzw(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    Iterator<Map.Entry<String, WeakReference<View>>> it2 = it;
                    try {
                        jSONObject4.put("width", zzdm(view2.getMeasuredWidth()));
                        jSONObject4.put("height", zzdm(view2.getMeasuredHeight()));
                        jSONObject4.put("x", zzdm(iArrZzw2[0] - iArrZzw[0]));
                        jSONObject4.put("y", zzdm(iArrZzw2[1] - iArrZzw[1]));
                        jSONObject4.put(str4, str3);
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = zzb(rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", zzdm(iArrZzw2[0] - iArrZzw[0]));
                            jSONObject.put("y", zzdm(iArrZzw2[1] - iArrZzw[1]));
                            jSONObject.put(str4, str3);
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            str = str3;
                            str2 = str4;
                            try {
                                jSONObject3.put("font_size", textView.getTextSize());
                                jSONObject3.put(MimeTypes.BASE_TYPE_TEXT, textView.getText());
                            } catch (JSONException unused) {
                                zzbad.zzep("Unable to get asset views information");
                                it = it2;
                                str3 = str;
                                str4 = str2;
                            }
                        } else {
                            str = str3;
                            str2 = str4;
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(next.getKey()) && view2.isClickable());
                        jSONObject2.put(next.getKey(), jSONObject3);
                    } catch (JSONException unused2) {
                        str = str3;
                        str2 = str4;
                    }
                    it = it2;
                    str3 = str;
                    str4 = str2;
                }
            }
        }
        return jSONObject2;
    }

    private final String zzv(View view) {
        try {
            JSONObject jSONObjectOptJSONObject = this.zzfmo.optJSONObject("tracking_urls_and_actions");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            return this.zzeko.zzcg().zza(this.zzlj, jSONObjectOptJSONObject.optString("click_string"), view);
        } catch (Exception e) {
            zzbad.zzc("Exception obtaining click signals", e);
            return null;
        }
    }

    private final JSONObject zzfj(String str) throws JSONException {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e) {
            e = e;
            jSONObject = null;
        }
        try {
            jSONObject.put("click_point", zzahn());
            jSONObject.put("asset_id", str);
        } catch (Exception e2) {
            e = e2;
            zzbad.zzc("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
        return jSONObject;
    }

    private final JSONObject zzahn() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", zzdm(this.zzfna.x));
            jSONObject.put("y", zzdm(this.zzfna.y));
            jSONObject.put("start_x", zzdm(this.zzfnb.x));
            jSONObject.put("start_y", zzdm(this.zzfnb.y));
            return jSONObject;
        } catch (JSONException e) {
            zzbad.zzc("Error occurred while putting signals into JSON object.", e);
            return null;
        }
    }

    private static int[] zzw(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    private final int zzdm(int i) {
        return zzyt.zzpa().zzb(this.zzlj, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbzb
    public final void destroy() {
        this.zzfmp.destroy();
    }
}
