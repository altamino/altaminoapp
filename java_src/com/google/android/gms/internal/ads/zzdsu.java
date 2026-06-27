package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class zzdsu implements zzbe, Closeable, Iterator<zzbd> {
    protected zzdsw zzhtn;
    protected zzba zzhtr;
    private static final zzbd zzhtq = new zzdsv("eof ");
    private static zzdtc zzcp = zzdtc.zzm(zzdsu.class);
    private zzbd zzhts = null;
    long zzhtt = 0;
    long zzbkn = 0;
    long zzbdz = 0;
    private List<zzbd> zzhtu = new ArrayList();

    public final List<zzbd> zzbbd() {
        if (this.zzhtn != null && this.zzhts != zzhtq) {
            return new zzdta(this.zzhtu, this);
        }
        return this.zzhtu;
    }

    public void zza(zzdsw zzdswVar, long j, zzba zzbaVar) throws IOException {
        this.zzhtn = zzdswVar;
        long jPosition = zzdswVar.position();
        this.zzbkn = jPosition;
        this.zzhtt = jPosition;
        zzdswVar.zzff(zzdswVar.position() + j);
        this.zzbdz = zzdswVar.position();
        this.zzhtr = zzbaVar;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        zzbd zzbdVar = this.zzhts;
        if (zzbdVar == zzhtq) {
            return false;
        }
        if (zzbdVar != null) {
            return true;
        }
        try {
            this.zzhts = (zzbd) next();
            return true;
        } catch (NoSuchElementException unused) {
            this.zzhts = zzhtq;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Iterator
    /* renamed from: zzbbe, reason: merged with bridge method [inline-methods] */
    public final zzbd next() {
        zzbd zzbdVarZza;
        zzbd zzbdVar = this.zzhts;
        if (zzbdVar != null && zzbdVar != zzhtq) {
            this.zzhts = null;
            return zzbdVar;
        }
        zzdsw zzdswVar = this.zzhtn;
        if (zzdswVar == null || this.zzhtt >= this.zzbdz) {
            this.zzhts = zzhtq;
            throw new NoSuchElementException();
        }
        try {
            synchronized (zzdswVar) {
                this.zzhtn.zzff(this.zzhtt);
                zzbdVarZza = this.zzhtr.zza(this.zzhtn, this);
                this.zzhtt = this.zzhtn.position();
            }
            return zzbdVarZza;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.zzhtu.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.zzhtu.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }

    public void close() throws IOException {
        this.zzhtn.close();
    }
}
