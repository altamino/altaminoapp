package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzacp {
    private final Collection<zzacj<?>> zzcki = new ArrayList();
    private final Collection<zzacj<String>> zzckj = new ArrayList();
    private final Collection<zzacj<String>> zzckk = new ArrayList();

    public final void zza(zzacj zzacjVar) {
        this.zzcki.add(zzacjVar);
    }

    public final void zzb(zzacj<String> zzacjVar) {
        this.zzckj.add(zzacjVar);
    }

    public final void zzc(zzacj<String> zzacjVar) {
        this.zzckk.add(zzacjVar);
    }

    public final void zza(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzacj<?> zzacjVar : this.zzcki) {
            if (zzacjVar.getSource() == 1) {
                zzacjVar.zza(editor, zzacjVar.zza(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzbad.zzen("Flag Json is null.");
        }
    }

    public final List<String> zzqn() {
        ArrayList arrayList = new ArrayList();
        Iterator<zzacj<String>> it = this.zzckj.iterator();
        while (it.hasNext()) {
            String str = (String) zzyt.zzpe().zzd(it.next());
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final List<String> zzqo() {
        List<String> listZzqn = zzqn();
        Iterator<zzacj<String>> it = this.zzckk.iterator();
        while (it.hasNext()) {
            String str = (String) zzyt.zzpe().zzd(it.next());
            if (str != null) {
                listZzqn.add(str);
            }
        }
        return listZzqn;
    }
}
