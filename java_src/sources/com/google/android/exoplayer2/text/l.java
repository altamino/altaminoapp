package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes7.dex */
public interface l {
    public static final l DEFAULT = new a();

    class a implements l {
        @Override // com.google.android.exoplayer2.text.l
        public boolean a(a2 a2Var) {
            String str = a2Var.sampleMimeType;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str) || "text/x-exoplayer-cues".equals(str);
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // com.google.android.exoplayer2.text.l
        public j b(a2 a2Var) {
            String str = a2Var.sampleMimeType;
            if (str != null) {
                byte b7 = -1;
                switch (str.hashCode()) {
                    case -1351681404:
                        if (str.equals("application/dvbsubs")) {
                            b7 = 0;
                        }
                        break;
                    case -1248334819:
                        if (str.equals("application/pgs")) {
                            b7 = 1;
                        }
                        break;
                    case -1026075066:
                        if (str.equals("application/x-mp4-vtt")) {
                            b7 = 2;
                        }
                        break;
                    case -1004728940:
                        if (str.equals("text/vtt")) {
                            b7 = 3;
                        }
                        break;
                    case 691401887:
                        if (str.equals("application/x-quicktime-tx3g")) {
                            b7 = 4;
                        }
                        break;
                    case 822864842:
                        if (str.equals("text/x-ssa")) {
                            b7 = 5;
                        }
                        break;
                    case 930165504:
                        if (str.equals("application/x-mp4-cea-608")) {
                            b7 = 6;
                        }
                        break;
                    case 1201784583:
                        if (str.equals("text/x-exoplayer-cues")) {
                            b7 = 7;
                        }
                        break;
                    case 1566015601:
                        if (str.equals("application/cea-608")) {
                            b7 = 8;
                        }
                        break;
                    case 1566016562:
                        if (str.equals("application/cea-708")) {
                            b7 = 9;
                        }
                        break;
                    case 1668750253:
                        if (str.equals("application/x-subrip")) {
                            b7 = 10;
                        }
                        break;
                    case 1693976202:
                        if (str.equals("application/ttml+xml")) {
                            b7 = com.google.common.base.c.VT;
                        }
                        break;
                }
                switch (b7) {
                    case 0:
                        return new y2.a(a2Var.initializationData);
                    case 1:
                        return new z2.a();
                    case 2:
                        return new com.google.android.exoplayer2.text.webvtt.a();
                    case 3:
                        return new com.google.android.exoplayer2.text.webvtt.h();
                    case 4:
                        return new c3.a(a2Var.initializationData);
                    case 5:
                        return new com.google.android.exoplayer2.text.ssa.a(a2Var.initializationData);
                    case 6:
                    case 8:
                        return new com.google.android.exoplayer2.text.cea.a(str, a2Var.accessibilityChannel, 16000L);
                    case 7:
                        return new g();
                    case 9:
                        return new com.google.android.exoplayer2.text.cea.c(a2Var.accessibilityChannel, a2Var.initializationData);
                    case 10:
                        return new b3.a();
                    case 11:
                        return new com.google.android.exoplayer2.text.ttml.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }

        a() {
        }
    }

    boolean a(a2 a2Var);

    j b(a2 a2Var);
}
