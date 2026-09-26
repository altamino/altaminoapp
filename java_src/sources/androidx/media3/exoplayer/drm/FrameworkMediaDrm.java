package androidx.media3.exoplayer.drm;

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
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
public final class FrameworkMediaDrm implements ExoMediaDrm {
    private static final String CENC_SCHEME_MIME_TYPE = "cenc";

    @UnstableApi
    public static final ExoMediaDrm.Provider DEFAULT_PROVIDER = new ExoMediaDrm.Provider() { // from class: androidx.media3.exoplayer.drm.u
        @Override // androidx.media3.exoplayer.drm.ExoMediaDrm.Provider
        public final ExoMediaDrm a(UUID uuid) {
            return FrameworkMediaDrm.u(uuid);
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
    public /* synthetic */ void t(ExoMediaDrm.OnEventListener onEventListener, MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
        onEventListener.a(this, bArr, i10, i11, bArr2);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public synchronized void a() {
        Assertions.g(this.referenceCount > 0);
        this.referenceCount++;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public int b() {
        return 2;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public synchronized void release() {
        int i10 = this.referenceCount - 1;
        this.referenceCount = i10;
        if (i10 == 0) {
            this.mediaDrm.release();
        }
    }

    @RequiresApi
    private static class Api31 {
        private Api31() {
        }

        @DoNotInline
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        @DoNotInline
        public static void b(MediaDrm mediaDrm, byte[] bArr, PlayerId playerId) {
            LogSessionId logSessionIdA = playerId.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                x.a(Assertions.e(mediaDrm.getPlaybackComponent(bArr))).setLogSessionId(logSessionIdA);
            }
        }
    }

    private static byte[] j(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        int iU = parsableByteArray.u();
        short sW = parsableByteArray.w();
        short sW2 = parsableByteArray.w();
        if (sW != 1 || sW2 != 1) {
            Log.f(TAG, "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short sW3 = parsableByteArray.w();
        Charset charset = com.google.common.base.e.UTF_16LE;
        String strF = parsableByteArray.F(sW3, charset);
        if (strF.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strF.indexOf("</DATA>");
        if (iIndexOf == -1) {
            Log.i(TAG, "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strF.substring(0, iIndexOf) + MOCK_LA_URL + strF.substring(iIndexOf);
        int i10 = iU + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i10);
        byteBufferAllocate.putShort(sW);
        byteBufferAllocate.putShort(sW2);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    private static String k(String str) {
        if (MOCK_LA_URL.equals(str)) {
            return "";
        }
        return (Util.SDK_INT == 33 && "https://default.url".equals(str)) ? "" : str;
    }

    private static byte[] l(UUID uuid, byte[] bArr) {
        return C.CLEARKEY_UUID.equals(uuid) ? ClearKeyUtil.a(bArr) : bArr;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e A[RETURN] */
    private static byte[] m(UUID uuid, byte[] bArr) {
        byte[] bArrE;
        UUID uuid2 = C.PLAYREADY_UUID;
        if (uuid2.equals(uuid)) {
            byte[] bArrE2 = PsshAtomUtil.e(bArr, uuid);
            if (bArrE2 != null) {
                bArr = bArrE2;
            }
            bArr = PsshAtomUtil.a(uuid2, j(bArr));
        }
        if (Util.SDK_INT < 23 && C.WIDEVINE_UUID.equals(uuid)) {
            bArrE = PsshAtomUtil.e(bArr, uuid);
            if (bArrE != null) {
                return bArrE;
            }
        } else if (uuid2.equals(uuid) && "Amazon".equals(Util.MANUFACTURER)) {
            String str = Util.MODEL;
            if ("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) {
                bArrE = PsshAtomUtil.e(bArr, uuid);
                if (bArrE != null) {
                    return bArrE;
                }
            }
        }
        return bArr;
    }

    private static String n(UUID uuid, String str) {
        return (Util.SDK_INT < 26 && C.CLEARKEY_UUID.equals(uuid) && ("video/mp4".equals(str) || "audio/mp4".equals(str))) ? "cenc" : str;
    }

    private static UUID o(UUID uuid) {
        return (Util.SDK_INT >= 27 || !C.CLEARKEY_UUID.equals(uuid)) ? uuid : C.COMMON_PSSH_UUID;
    }

    private static DrmInitData.SchemeData s(UUID uuid, List<DrmInitData.SchemeData> list) {
        if (!C.WIDEVINE_UUID.equals(uuid)) {
            return list.get(0);
        }
        if (Util.SDK_INT >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = list.get(0);
            int i10 = 0;
            int length = 0;
            while (true) {
                if (i10 >= list.size()) {
                    byte[] bArr = new byte[length];
                    int i11 = 0;
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        byte[] bArr2 = (byte[]) Assertions.e(list.get(i12).data);
                        int length2 = bArr2.length;
                        System.arraycopy(bArr2, 0, bArr, i11, length2);
                        i11 += length2;
                    }
                    return schemeData.c(bArr);
                }
                DrmInitData.SchemeData schemeData2 = list.get(i10);
                byte[] bArr3 = (byte[]) Assertions.e(schemeData2.data);
                if (!Util.c(schemeData2.mimeType, schemeData.mimeType) || !Util.c(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !PsshAtomUtil.c(bArr3)) {
                    break;
                }
                length += bArr3.length;
                i10++;
            }
        }
        for (int i13 = 0; i13 < list.size(); i13++) {
            DrmInitData.SchemeData schemeData3 = list.get(i13);
            int iG = PsshAtomUtil.g((byte[]) Assertions.e(schemeData3.data));
            int i14 = Util.SDK_INT;
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
        return "ASUS_Z00AD".equals(Util.MODEL);
    }

    @UnstableApi
    public static FrameworkMediaDrm w(UUID uuid) throws UnsupportedDrmException {
        try {
            return new FrameworkMediaDrm(uuid);
        } catch (UnsupportedSchemeException e) {
            throw new UnsupportedDrmException(1, e);
        } catch (Exception e2) {
            throw new UnsupportedDrmException(2, e2);
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void closeSession(byte[] bArr) {
        this.mediaDrm.closeSession(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public boolean d(byte[] bArr, String str) {
        if (Util.SDK_INT >= 31) {
            return Api31.a(this.mediaDrm, str);
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

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @SuppressLint({"WrongConstant"})
    @UnstableApi
    public ExoMediaDrm.KeyRequest e(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> map) throws NotProvisionedException {
        DrmInitData.SchemeData schemeDataS;
        byte[] bArrM;
        String strN;
        if (list != null) {
            schemeDataS = s(this.uuid, list);
            bArrM = m(this.uuid, (byte[]) Assertions.e(schemeDataS.data));
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
        return new ExoMediaDrm.KeyRequest(bArrL, strK, Util.SDK_INT >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void f(byte[] bArr, PlayerId playerId) {
        if (Util.SDK_INT >= 31) {
            try {
                Api31.b(this.mediaDrm, bArr, playerId);
            } catch (UnsupportedOperationException unused) {
                Log.i(TAG, "setLogSessionId failed.");
            }
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void g(@Nullable final ExoMediaDrm.OnEventListener onEventListener) {
        this.mediaDrm.setOnEventListener(onEventListener == null ? null : new MediaDrm.OnEventListener() { // from class: androidx.media3.exoplayer.drm.v
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
                this.f514a.t(onEventListener, mediaDrm, bArr, i10, i11, bArr2);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public ExoMediaDrm.ProvisionRequest getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.mediaDrm.getProvisionRequest();
        return new ExoMediaDrm.ProvisionRequest(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public byte[] openSession() throws MediaDrmException {
        return this.mediaDrm.openSession();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public FrameworkCryptoConfig c(byte[] bArr) throws MediaCryptoException {
        return new FrameworkCryptoConfig(o(this.uuid), bArr, Util.SDK_INT < 21 && C.WIDEVINE_UUID.equals(this.uuid) && "L3".equals(r("securityLevel")));
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @Nullable
    @UnstableApi
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException {
        if (C.CLEARKEY_UUID.equals(this.uuid)) {
            bArr2 = ClearKeyUtil.b(bArr2);
        }
        return this.mediaDrm.provideKeyResponse(bArr, bArr2);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.mediaDrm.provideProvisionResponse(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    @UnstableApi
    public String r(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.mediaDrm.restoreKeys(bArr, bArr2);
    }

    private FrameworkMediaDrm(UUID uuid) throws UnsupportedSchemeException {
        Assertions.e(uuid);
        Assertions.b(!C.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        MediaDrm mediaDrm = new MediaDrm(o(uuid));
        this.mediaDrm = mediaDrm;
        this.referenceCount = 1;
        if (C.WIDEVINE_UUID.equals(uuid) && v()) {
            q(mediaDrm);
        }
    }

    private static void q(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ExoMediaDrm u(UUID uuid) {
        try {
            return w(uuid);
        } catch (UnsupportedDrmException unused) {
            Log.c(TAG, "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new DummyExoMediaDrm();
        }
    }
}
