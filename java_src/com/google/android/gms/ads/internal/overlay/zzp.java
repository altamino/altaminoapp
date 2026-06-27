package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzazt;
import com.google.android.gms.internal.ads.zzyt;

@zzard
/* loaded from: classes.dex */
public final class zzp extends FrameLayout implements View.OnClickListener {
    private final ImageButton zzdku;
    private final zzx zzdkv;

    public zzp(Context context, zzq zzqVar, zzx zzxVar) {
        super(context);
        this.zzdkv = zzxVar;
        setOnClickListener(this);
        this.zzdku = new ImageButton(context);
        this.zzdku.setImageResource(R.drawable.btn_dialog);
        this.zzdku.setBackgroundColor(0);
        this.zzdku.setOnClickListener(this);
        ImageButton imageButton = this.zzdku;
        zzyt.zzpa();
        int iZza = zzazt.zza(context, zzqVar.paddingLeft);
        zzyt.zzpa();
        int iZza2 = zzazt.zza(context, 0);
        zzyt.zzpa();
        int iZza3 = zzazt.zza(context, zzqVar.paddingRight);
        zzyt.zzpa();
        imageButton.setPadding(iZza, iZza2, iZza3, zzazt.zza(context, zzqVar.paddingBottom));
        this.zzdku.setContentDescription("Interstitial close button");
        ImageButton imageButton2 = this.zzdku;
        zzyt.zzpa();
        int iZza4 = zzazt.zza(context, zzqVar.size + zzqVar.paddingLeft + zzqVar.paddingRight);
        zzyt.zzpa();
        addView(imageButton2, new FrameLayout.LayoutParams(iZza4, zzazt.zza(context, zzqVar.size + zzqVar.paddingBottom), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzx zzxVar = this.zzdkv;
        if (zzxVar != null) {
            zzxVar.zztf();
        }
    }

    public final void zzaf(boolean z) {
        if (z) {
            this.zzdku.setVisibility(8);
        } else {
            this.zzdku.setVisibility(0);
        }
    }
}
