package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class m<A, B> {
    private static final int DEFAULT_SIZE = 250;
    private final com.bumptech.glide.util.g<b<A>, B> cache;

    class a extends com.bumptech.glide.util.g<b<A>, B> {
        a(long j6) {
            super(j6);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.util.g
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(@NonNull b<A> bVar, @Nullable B b7) {
            bVar.c();
        }
    }

    @VisibleForTesting
    static final class b<A> {
        private static final Queue<b<?>> KEY_QUEUE = com.bumptech.glide.util.k.e(0);
        private int height;
        private A model;
        private int width;

        private void b(A a7, int i10, int i11) {
            this.model = a7;
            this.width = i10;
            this.height = i11;
        }

        static <A> b<A> a(A a7, int i10, int i11) {
            b<A> bVar;
            Queue<b<?>> queue = KEY_QUEUE;
            synchronized (queue) {
                bVar = (b) queue.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.b(a7, i10, i11);
            return bVar;
        }

        public void c() {
            Queue<b<?>> queue = KEY_QUEUE;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.width == bVar.width && this.height == bVar.height && this.model.equals(bVar.model);
        }

        public int hashCode() {
            return (((this.height * 31) + this.width) * 31) + this.model.hashCode();
        }

        private b() {
        }
    }

    public m() {
        this(250L);
    }

    public m(long j6) {
        this.cache = new a(j6);
    }

    @Nullable
    public B a(A a7, int i10, int i11) {
        b<A> bVarA = b.a(a7, i10, i11);
        B bH = this.cache.h(bVarA);
        bVarA.c();
        return bH;
    }

    public void b(A a7, int i10, int i11, B b7) {
        this.cache.k(b.a(a7, i10, i11), b7);
    }
}
