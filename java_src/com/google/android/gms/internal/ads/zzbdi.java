package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;

@zzard
@TargetApi(14)
/* loaded from: classes2.dex */
public final class zzbdi implements AudioManager.OnAudioFocusChangeListener {
    private float zzcv = 1.0f;
    private boolean zzebz;
    private final AudioManager zzeey;
    private final zzbdj zzeez;
    private boolean zzefa;
    private boolean zzefb;

    public zzbdi(Context context, zzbdj zzbdjVar) {
        this.zzeey = (AudioManager) context.getSystemService("audio");
        this.zzeez = zzbdjVar;
    }

    public final void setMuted(boolean z) {
        this.zzefb = z;
        zzyo();
    }

    public final void setVolume(float f) {
        this.zzcv = f;
        zzyo();
    }

    public final float getVolume() {
        float f = this.zzefb ? 0.0f : this.zzcv;
        if (this.zzefa) {
            return f;
        }
        return 0.0f;
    }

    public final void zzyl() {
        this.zzebz = true;
        zzyo();
    }

    public final void zzym() {
        this.zzebz = false;
        zzyo();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.zzefa = i > 0;
        this.zzeez.zzxk();
    }

    private final void zzyo() {
        boolean z;
        boolean z2;
        boolean z3 = this.zzebz && !this.zzefb && this.zzcv > 0.0f;
        if (z3 && !(z2 = this.zzefa)) {
            AudioManager audioManager = this.zzeey;
            if (audioManager != null && !z2) {
                this.zzefa = audioManager.requestAudioFocus(this, 3, 2) == 1;
            }
            this.zzeez.zzxk();
            return;
        }
        if (z3 || !(z = this.zzefa)) {
            return;
        }
        AudioManager audioManager2 = this.zzeey;
        if (audioManager2 != null && z) {
            this.zzefa = audioManager2.abandonAudioFocus(this) == 0;
        }
        this.zzeez.zzxk();
    }
}
