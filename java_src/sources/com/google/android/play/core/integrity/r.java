package com.google.android.play.core.integrity;

import android.net.Network;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
final class r extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Long f1419b;

    /* synthetic */ r(String str, Long l, Network network, q qVar) {
        this.f1418a = str;
        this.f1419b = l;
    }

    @Override // com.google.android.play.core.integrity.d
    @Nullable
    @RequiresApi
    public final Network a() {
        return null;
    }

    @Override // com.google.android.play.core.integrity.d
    @Nullable
    public final Long c() {
        return this.f1419b;
    }

    @Override // com.google.android.play.core.integrity.d
    public final String d() {
        return this.f1418a;
    }

    public final boolean equals(Object obj) {
        Long l;
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f1418a.equals(dVar.d()) && ((l = this.f1419b) != null ? l.equals(dVar.c()) : dVar.c() == null)) {
                dVar.a();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f1418a.hashCode() ^ 1000003;
        Long l = this.f1419b;
        return ((iHashCode * 1000003) ^ (l == null ? 0 : l.hashCode())) * 1000003;
    }

    public final String toString() {
        return "IntegrityTokenRequest{nonce=" + this.f1418a + ", cloudProjectNumber=" + this.f1419b + ", network=null}";
    }
}
