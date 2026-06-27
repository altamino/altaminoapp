package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcl implements zzcp {
    static final Map<Uri, zzcl> zzzi = new ArrayMap();
    private static final String[] zzzn = {"key", "value"};
    private final Uri uri;
    private final ContentResolver zzzj;
    private volatile Map<String, String> zzzl;
    private final Object zzzk = new Object();
    private final List<zzco> zzzm = new ArrayList();

    private zzcl(ContentResolver contentResolver, Uri uri) {
        this.zzzj = contentResolver;
        this.uri = uri;
        this.zzzj.registerContentObserver(uri, false, new zzcn(this, null));
    }

    public static zzcl zza(ContentResolver contentResolver, Uri uri) {
        zzcl zzclVar;
        synchronized (zzcl.class) {
            zzclVar = zzzi.get(uri);
            if (zzclVar == null) {
                try {
                    zzcl zzclVar2 = new zzcl(contentResolver, uri);
                    try {
                        zzzi.put(uri, zzclVar2);
                    } catch (SecurityException unused) {
                    }
                    zzclVar = zzclVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzclVar;
    }

    public final Map<String, String> zzjj() {
        Map<String, String> mapZzjl = this.zzzl;
        if (mapZzjl == null) {
            synchronized (this.zzzk) {
                mapZzjl = this.zzzl;
                if (mapZzjl == null) {
                    mapZzjl = zzjl();
                    this.zzzl = mapZzjl;
                }
            }
        }
        return mapZzjl != null ? mapZzjl : Collections.emptyMap();
    }

    public final void zzjk() {
        synchronized (this.zzzk) {
            this.zzzl = null;
            zzcw.zzjp();
        }
        synchronized (this) {
            Iterator<zzco> it = this.zzzm.iterator();
            while (it.hasNext()) {
                it.next().zzjo();
            }
        }
    }

    private final Map<String, String> zzjl() {
        try {
            return (Map) zzcq.zza(new zzcr(this) { // from class: com.google.android.gms.internal.measurement.zzcm
                private final zzcl zzzo;

                {
                    this.zzzo = this;
                }

                @Override // com.google.android.gms.internal.measurement.zzcr
                public final Object zzjn() {
                    return this.zzzo.zzjm();
                }
            });
        } catch (SQLiteException | IllegalStateException | SecurityException unused) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final /* synthetic */ Object zzca(String str) {
        return zzjj().get(str);
    }

    final /* synthetic */ Map zzjm() {
        Map map;
        Cursor cursorQuery = this.zzzj.query(this.uri, zzzn, null, null, null);
        if (cursorQuery == null) {
            return Collections.emptyMap();
        }
        try {
            int count = cursorQuery.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                map = new ArrayMap(count);
            } else {
                map = new HashMap(count, 1.0f);
            }
            while (cursorQuery.moveToNext()) {
                map.put(cursorQuery.getString(0), cursorQuery.getString(1));
            }
            return map;
        } finally {
            cursorQuery.close();
        }
    }
}
