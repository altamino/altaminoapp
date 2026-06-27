package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbml implements zzalm<zzbmp> {
    private final zzty zzffp;
    private final Context zzlj;
    private final PowerManager zzyt;

    public zzbml(Context context, zzty zztyVar) {
        this.zzlj = context;
        this.zzffp = zztyVar;
        this.zzyt = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final JSONObject zzj(zzbmp zzbmpVar) throws JSONException {
        boolean zIsScreenOn;
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzud zzudVar = zzbmpVar.zzfge;
        if (zzudVar == null) {
            jSONObject = new JSONObject();
        } else {
            if (this.zzffp.zzmh() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = zzudVar.zzbtp;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObjectPut = jSONObject3.put("afmaVersion", this.zzffp.zzmg()).put("activeViewJSON", this.zzffp.zzmh()).put("timestamp", zzbmpVar.timestamp).put("adFormat", this.zzffp.zzmf()).put("hashCode", this.zzffp.zzmi()).put("isMraid", false).put("isStopped", false).put("isPaused", zzbmpVar.zzfgb).put("isNative", this.zzffp.zzmj());
            if (Build.VERSION.SDK_INT >= 20) {
                zIsScreenOn = this.zzyt.isInteractive();
            } else {
                zIsScreenOn = this.zzyt.isScreenOn();
            }
            jSONObjectPut.put("isScreenOn", zIsScreenOn).put("appMuted", com.google.android.gms.ads.internal.zzk.zzll().zzpr()).put("appVolume", com.google.android.gms.ads.internal.zzk.zzll().zzpq()).put("deviceVolume", zzaya.zzba(this.zzlj.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.zzlj.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzudVar.zzza).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzudVar.zzbtq.top).put("bottom", zzudVar.zzbtq.bottom).put(TtmlNode.LEFT, zzudVar.zzbtq.left).put(TtmlNode.RIGHT, zzudVar.zzbtq.right)).put("adBox", new JSONObject().put("top", zzudVar.zzbtr.top).put("bottom", zzudVar.zzbtr.bottom).put(TtmlNode.LEFT, zzudVar.zzbtr.left).put(TtmlNode.RIGHT, zzudVar.zzbtr.right)).put("globalVisibleBox", new JSONObject().put("top", zzudVar.zzbts.top).put("bottom", zzudVar.zzbts.bottom).put(TtmlNode.LEFT, zzudVar.zzbts.left).put(TtmlNode.RIGHT, zzudVar.zzbts.right)).put("globalVisibleBoxVisible", zzudVar.zzbtt).put("localVisibleBox", new JSONObject().put("top", zzudVar.zzbtu.top).put("bottom", zzudVar.zzbtu.bottom).put(TtmlNode.LEFT, zzudVar.zzbtu.left).put(TtmlNode.RIGHT, zzudVar.zzbtu.right)).put("localVisibleBoxVisible", zzudVar.zzbtv).put("hitBox", new JSONObject().put("top", zzudVar.zzbtw.top).put("bottom", zzudVar.zzbtw.bottom).put(TtmlNode.LEFT, zzudVar.zzbtw.left).put(TtmlNode.RIGHT, zzudVar.zzbtw.right)).put("screenDensity", this.zzlj.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzbmpVar.zzbtk);
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcql)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzudVar.zzbty;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put(TtmlNode.LEFT, rect2.left).put(TtmlNode.RIGHT, rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzbmpVar.zzfgd)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
