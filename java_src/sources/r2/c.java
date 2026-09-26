package r2;

import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes7.dex */
public interface c {
    public static final c DEFAULT = new a();

    class a implements c {
        @Override // r2.c
        public boolean a(a2 a2Var) {
            String str = a2Var.sampleMimeType;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // r2.c
        public b b(a2 a2Var) {
            String str = a2Var.sampleMimeType;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new s2.a();
                    case "application/x-icy":
                        return new u2.a();
                    case "application/id3":
                        return new v2.b();
                    case "application/x-emsg":
                        return new t2.a();
                    case "application/x-scte35":
                        return new com.google.android.exoplayer2.metadata.scte35.a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }

        a() {
        }
    }

    boolean a(a2 a2Var);

    b b(a2 a2Var);
}
