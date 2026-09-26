package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.analytics.t1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class j0 implements f0 {
    private static final String CENC_SCHEME_MIME_TYPE = "cenc";
    public static final f0.d DEFAULT_PROVIDER = new f0.d() { // from class: com.google.android.exoplayer2.drm.i0
        @Override // com.google.android.exoplayer2.drm.f0.d
        public final f0 a(UUID uuid) {
            return j0.u(uuid);
        }
    };
    private static final String MOCK_LA_URL = "<LA_URL>https://x</LA_URL>";
    private static final String MOCK_LA_URL_VALUE = "https://x";
    private static final String TAG = "FrameworkMediaDrm";
    private static final int UTF_16_BYTES_PER_CHARACTER = 2;
    private final MediaDrm mediaDrm;
    private int referenceCount;
    private final UUID uuid;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(f0.c cVar, MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
        cVar.a(this, bArr, i10, i11, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public synchronized void a() {
        com.google.android.exoplayer2.util.a.g(this.referenceCount > 0);
        this.referenceCount++;
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public int b() {
        return 2;
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public synchronized void release() {
        int i10 = this.referenceCount - 1;
        this.referenceCount = i10;
        if (i10 == 0) {
            this.mediaDrm.release();
        }
    }

    @RequiresApi
    private static class a {
        @DoNotInline
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        @DoNotInline
        public static void b(MediaDrm mediaDrm, byte[] bArr, t1 t1Var) {
            LogSessionId logSessionIdA = t1Var.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                androidx.media3.exoplayer.drm.x.a(com.google.android.exoplayer2.util.a.e(mediaDrm.getPlaybackComponent(bArr))).setLogSessionId(logSessionIdA);
            }
        }
    }

    private static byte[] j(byte[] bArr) {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(bArr);
        int iQ = c0Var.q();
        short s = c0Var.s();
        short s5 = c0Var.s();
        if (s != 1 || s5 != 1) {
            com.google.android.exoplayer2.util.t.f(TAG, "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short s10 = c0Var.s();
        Charset charset = com.google.common.base.e.UTF_16LE;
        String strB = c0Var.B(s10, charset);
        if (strB.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strB.indexOf("</DATA>");
        if (iIndexOf == -1) {
            com.google.android.exoplayer2.util.t.i(TAG, "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strB.substring(0, iIndexOf) + MOCK_LA_URL + strB.substring(iIndexOf);
        int i10 = iQ + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i10);
        byteBufferAllocate.putShort(s);
        byteBufferAllocate.putShort(s5);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    private static String k(String str) {
        if (MOCK_LA_URL.equals(str)) {
            return "";
        }
        return (com.google.android.exoplayer2.util.o0.SDK_INT == 33 && "https://default.url".equals(str)) ? "" : str;
    }

    private static byte[] l(UUID uuid, byte[] bArr) {
        return com.google.android.exoplayer2.i.CLEARKEY_UUID.equals(uuid) ? com.google.android.exoplayer2.drm.a.a(bArr) : bArr;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e A[RETURN] */
    private static byte[] m(UUID uuid, byte[] bArr) {
        byte[] bArrE;
        UUID uuid2 = com.google.android.exoplayer2.i.PLAYREADY_UUID;
        if (uuid2.equals(uuid)) {
            byte[] bArrE2 = com.google.android.exoplayer2.extractor.mp4.l.e(bArr, uuid);
            if (bArrE2 != null) {
                bArr = bArrE2;
            }
            bArr = com.google.android.exoplayer2.extractor.mp4.l.a(uuid2, j(bArr));
        }
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 23 && com.google.android.exoplayer2.i.WIDEVINE_UUID.equals(uuid)) {
            bArrE = com.google.android.exoplayer2.extractor.mp4.l.e(bArr, uuid);
            if (bArrE != null) {
                return bArrE;
            }
        } else if (uuid2.equals(uuid) && "Amazon".equals(com.google.android.exoplayer2.util.o0.MANUFACTURER)) {
            String str = com.google.android.exoplayer2.util.o0.MODEL;
            if ("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) {
                bArrE = com.google.android.exoplayer2.extractor.mp4.l.e(bArr, uuid);
                if (bArrE != null) {
                    return bArrE;
                }
            }
        }
        return bArr;
    }

    private static String n(UUID uuid, String str) {
        return (com.google.android.exoplayer2.util.o0.SDK_INT < 26 && com.google.android.exoplayer2.i.CLEARKEY_UUID.equals(uuid) && ("video/mp4".equals(str) || "audio/mp4".equals(str))) ? "cenc" : str;
    }

    private static UUID o(UUID uuid) {
        return (com.google.android.exoplayer2.util.o0.SDK_INT >= 27 || !com.google.android.exoplayer2.i.CLEARKEY_UUID.equals(uuid)) ? uuid : com.google.android.exoplayer2.i.COMMON_PSSH_UUID;
    }

    private static void q(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData s(UUID uuid, List<DrmInitData.SchemeData> list) {
        if (!com.google.android.exoplayer2.i.WIDEVINE_UUID.equals(uuid)) {
            return list.get(0);
        }
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = list.get(0);
            int i10 = 0;
            int length = 0;
            while (true) {
                if (i10 >= list.size()) {
                    byte[] bArr = new byte[length];
                    int i11 = 0;
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        byte[] bArr2 = (byte[]) com.google.android.exoplayer2.util.a.e(list.get(i12).data);
                        int length2 = bArr2.length;
                        System.arraycopy(bArr2, 0, bArr, i11, length2);
                        i11 += length2;
                    }
                    return schemeData.a(bArr);
                }
                DrmInitData.SchemeData schemeData2 = list.get(i10);
                byte[] bArr3 = (byte[]) com.google.android.exoplayer2.util.a.e(schemeData2.data);
                if (!com.google.android.exoplayer2.util.o0.c(schemeData2.mimeType, schemeData.mimeType) || !com.google.android.exoplayer2.util.o0.c(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !com.google.android.exoplayer2.extractor.mp4.l.c(bArr3)) {
                    break;
                }
                length += bArr3.length;
                i10++;
            }
        }
        for (int i13 = 0; i13 < list.size(); i13++) {
            DrmInitData.SchemeData schemeData3 = list.get(i13);
            int iG = com.google.android.exoplayer2.extractor.mp4.l.g((byte[]) com.google.android.exoplayer2.util.a.e(schemeData3.data));
            int i14 = com.google.android.exoplayer2.util.o0.SDK_INT;
            if (i14 < 23 && iG == 0) {
                return schemeData3;
            }
            if (i14 >= 23 && iG == 1) {
                return schemeData3;
            }
        }
        return list.get(0);
    }

    private static boolean v() {
        return "ASUS_Z00AD".equals(com.google.android.exoplayer2.util.o0.MODEL);
    }

    public static j0 w(UUID uuid) throws o0 {
        try {
            return new j0(uuid);
        } catch (UnsupportedSchemeException e) {
            throw new o0(1, e);
        } catch (Exception e2) {
            throw new o0(2, e2);
        }
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void closeSession(byte[] bArr) {
        this.mediaDrm.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public boolean d(byte[] bArr, String str) {
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 31) {
            return a.a(this.mediaDrm, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.uuid, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.drm.f0
    @SuppressLint({"WrongConstant"})
    public f0.b e(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> map) throws NotProvisionedException {
        DrmInitData.SchemeData schemeDataS;
        byte[] bArrM;
        String strN;
        if (list != null) {
            schemeDataS = s(this.uuid, list);
            bArrM = m(this.uuid, (byte[]) com.google.android.exoplayer2.util.a.e(schemeDataS.data));
            strN = n(this.uuid, schemeDataS.mimeType);
        } else {
            schemeDataS = null;
            bArrM = null;
            strN = null;
        }
        MediaDrm.KeyRequest keyRequest = this.mediaDrm.getKeyRequest(bArr, bArrM, strN, i10, map);
        byte[] bArrL = l(this.uuid, keyRequest.getData());
        String strK = k(keyRequest.getDefaultUrl());
        if (TextUtils.isEmpty(strK) && schemeDataS != null && !TextUtils.isEmpty(schemeDataS.licenseServerUrl)) {
            strK = schemeDataS.licenseServerUrl;
        }
        return new f0.b(bArrL, strK, com.google.android.exoplayer2.util.o0.SDK_INT >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void f(@Nullable final f0.c cVar) {
        this.mediaDrm.setOnEventListener(cVar == null ? null : new MediaDrm.OnEventListener() { // from class: com.google.android.exoplayer2.drm.h0
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
                this.f1196a.t(cVar, mediaDrm, bArr, i10, i11, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void g(byte[] bArr, t1 t1Var) {
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 31) {
            try {
                a.b(this.mediaDrm, bArr, t1Var);
            } catch (UnsupportedOperationException unused) {
                com.google.android.exoplayer2.util.t.i(TAG, "setLogSessionId failed.");
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public f0.e getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.mediaDrm.getProvisionRequest();
        return new f0.e(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public byte[] openSession() throws MediaDrmException {
        return this.mediaDrm.openSession();
    }

    @Override // com.google.android.exoplayer2.drm.f0
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public g0 c(byte[] bArr) throws MediaCryptoException {
        return new g0(o(this.uuid), bArr, com.google.android.exoplayer2.util.o0.SDK_INT < 21 && com.google.android.exoplayer2.i.WIDEVINE_UUID.equals(this.uuid) && "L3".equals(r("securityLevel")));
    }

    @Override // com.google.android.exoplayer2.drm.f0
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException {
        if (com.google.android.exoplayer2.i.CLEARKEY_UUID.equals(this.uuid)) {
            bArr2 = com.google.android.exoplayer2.drm.a.b(bArr2);
        }
        return this.mediaDrm.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.mediaDrm.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    public String r(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    @Override // com.google.android.exoplayer2.drm.f0
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.mediaDrm.restoreKeys(bArr, bArr2);
    }

    private j0(UUID uuid) throws UnsupportedSchemeException {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.i.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        MediaDrm mediaDrm = new MediaDrm(o(uuid));
        this.mediaDrm = mediaDrm;
        this.referenceCount = 1;
        if (com.google.android.exoplayer2.i.WIDEVINE_UUID.equals(uuid) && v()) {
            q(mediaDrm);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f0 u(UUID uuid) {
        try {
            return w(uuid);
        } catch (o0 unused) {
            com.google.android.exoplayer2.util.t.c(TAG, "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new c0();
        }
    }
}
