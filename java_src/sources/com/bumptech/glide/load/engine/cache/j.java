package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.util.k;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import l9.p;

/* JADX INFO: loaded from: classes10.dex */
public class j {
    private final com.bumptech.glide.util.g<com.bumptech.glide.load.g, String> loadIdToSafeHash = new com.bumptech.glide.util.g<>(1000);
    private final Pools.Pool<b> digestPool = a1.a.d(10, new a());

    class a implements a1.a.d<b> {
        a() {
        }

        @Override // a1.a.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a() {
            try {
                return new b(MessageDigest.getInstance(p.SHA_256));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private static final class b implements a1.a.f {
        final MessageDigest messageDigest;
        private final a1.c stateVerifier = a1.c.a();

        @Override // a1.a.f
        @NonNull
        public a1.c e() {
            return this.stateVerifier;
        }

        b(MessageDigest messageDigest) {
            this.messageDigest = messageDigest;
        }
    }

    private String a(com.bumptech.glide.load.g gVar) {
        b bVar = (b) com.bumptech.glide.util.j.d(this.digestPool.a());
        try {
            gVar.b(bVar.messageDigest);
            return k.s(bVar.messageDigest.digest());
        } finally {
            this.digestPool.b(bVar);
        }
    }

    public String b(com.bumptech.glide.load.g gVar) {
        String strH;
        synchronized (this.loadIdToSafeHash) {
            strH = this.loadIdToSafeHash.h(gVar);
        }
        if (strH == null) {
            strH = a(gVar);
        }
        synchronized (this.loadIdToSafeHash) {
            this.loadIdToSafeHash.k(gVar, strH);
        }
        return strH;
    }
}
