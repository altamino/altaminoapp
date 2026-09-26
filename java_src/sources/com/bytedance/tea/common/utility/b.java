package com.bytedance.tea.common.utility;

import android.util.Pair;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
class b extends NetworkClient {
    @Override // com.bytedance.tea.common.utility.NetworkClient
    public String post(String str, List<Pair<String, String>> list, Map<String, String> map, NetworkClient.a aVar) throws CommonHttpException {
        throw new CommonHttpException(0, "not implemented");
    }

    @Override // com.bytedance.tea.common.utility.NetworkClient
    public String get(String str, Map<String, String> map, NetworkClient.a aVar) throws CommonHttpException {
        try {
            return new String(NetworkUtils.a(str, map));
        } catch (Throwable th) {
            if (th instanceof HttpResponseException) {
                throw new CommonHttpException(th.getStatusCode(), th.getMessage());
            }
            throw new CommonHttpException(0, th.getMessage());
        }
    }

    @Override // com.bytedance.tea.common.utility.NetworkClient
    public String post(String str, byte[] bArr, Map<String, String> map, NetworkClient.a aVar) throws CommonHttpException {
        try {
            return new String(NetworkUtils.a(str, bArr, map, "POST", true));
        } catch (Throwable th) {
            if (th instanceof HttpResponseException) {
                throw new CommonHttpException(th.getStatusCode(), th.getMessage());
            }
            throw new CommonHttpException(0, th.getMessage());
        }
    }

    b() {
    }
}
