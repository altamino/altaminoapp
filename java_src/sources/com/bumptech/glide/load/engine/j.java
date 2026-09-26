package com.bumptech.glide.load.engine;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j {
    public static final j ALL = new a();
    public static final j NONE = new b();
    public static final j DATA = new c();
    public static final j RESOURCE = new d();
    public static final j AUTOMATIC = new e();

    class a extends j {
        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(com.bumptech.glide.load.a aVar) {
            return aVar == com.bumptech.glide.load.a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z6, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return (aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }

        a() {
        }
    }

    class c extends j {
        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z6, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(com.bumptech.glide.load.a aVar) {
            return (aVar == com.bumptech.glide.load.a.DATA_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }

        c() {
        }
    }

    class d extends j {
        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(com.bumptech.glide.load.a aVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z6, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return (aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }

        d() {
        }
    }

    class e extends j {
        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(com.bumptech.glide.load.a aVar) {
            return aVar == com.bumptech.glide.load.a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z6, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return ((z6 && aVar == com.bumptech.glide.load.a.DATA_DISK_CACHE) || aVar == com.bumptech.glide.load.a.LOCAL) && cVar == com.bumptech.glide.load.c.TRANSFORMED;
        }

        e() {
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(com.bumptech.glide.load.a aVar);

    public abstract boolean d(boolean z6, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar);

    class b extends j {
        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(com.bumptech.glide.load.a aVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z6, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return false;
        }

        b() {
        }
    }
}
