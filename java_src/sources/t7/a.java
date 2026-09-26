package t7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    @NotNull
    private static final g<byte[]> ByteArrayPool = new C0498a();

    /* JADX INFO: renamed from: t7.a$a, reason: collision with other inner class name */
    public static final class C0498a extends d<byte[]> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // t7.d
        @NotNull
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public byte[] k() {
            return new byte[4096];
        }

        C0498a() {
            super(128);
        }
    }

    @NotNull
    public static final g<byte[]> a() {
        return ByteArrayPool;
    }
}
