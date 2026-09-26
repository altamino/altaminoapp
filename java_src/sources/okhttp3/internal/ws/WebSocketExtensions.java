package okhttp3.internal.ws;

import java.io.IOException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.s;
import kotlin.text.u;
import kotlinx.serialization.json.internal.b;
import okhttp3.Headers;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class WebSocketExtensions {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";

    @Nullable
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;

    @Nullable
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final WebSocketExtensions parse(@NotNull Headers responseHeaders) throws IOException {
            t.j(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            int i10 = 0;
            boolean z6 = false;
            Integer numM = null;
            boolean z10 = false;
            Integer numM2 = null;
            boolean z11 = false;
            boolean z12 = false;
            while (i10 < size) {
                int i11 = i10 + 1;
                if (kotlin.text.t.w(responseHeaders.name(i10), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION, true)) {
                    String strValue = responseHeaders.value(i10);
                    int i12 = 0;
                    while (i12 < strValue.length()) {
                        int iDelimiterOffset$default = Util.delimiterOffset$default(strValue, b.COMMA, i12, 0, 4, (Object) null);
                        int iDelimiterOffset = Util.delimiterOffset(strValue, ';', i12, iDelimiterOffset$default);
                        String strTrimSubstring = Util.trimSubstring(strValue, i12, iDelimiterOffset);
                        int i13 = iDelimiterOffset + 1;
                        if (kotlin.text.t.w(strTrimSubstring, "permessage-deflate", true)) {
                            if (z6) {
                                z12 = true;
                            }
                            i12 = i13;
                            while (i12 < iDelimiterOffset$default) {
                                int iDelimiterOffset2 = Util.delimiterOffset(strValue, ';', i12, iDelimiterOffset$default);
                                int iDelimiterOffset3 = Util.delimiterOffset(strValue, '=', i12, iDelimiterOffset2);
                                String strTrimSubstring2 = Util.trimSubstring(strValue, i12, iDelimiterOffset3);
                                String strV0 = iDelimiterOffset3 < iDelimiterOffset2 ? u.v0(Util.trimSubstring(strValue, iDelimiterOffset3 + 1, iDelimiterOffset2), "\"") : null;
                                i12 = iDelimiterOffset2 + 1;
                                if (kotlin.text.t.w(strTrimSubstring2, "client_max_window_bits", true)) {
                                    if (numM != null) {
                                        z12 = true;
                                    }
                                    numM = strV0 == null ? null : s.m(strV0);
                                    if (numM == null) {
                                        z12 = true;
                                    }
                                } else if (kotlin.text.t.w(strTrimSubstring2, "client_no_context_takeover", true)) {
                                    if (z10) {
                                        z12 = true;
                                    }
                                    if (strV0 != null) {
                                        z12 = true;
                                    }
                                    z10 = true;
                                } else if (kotlin.text.t.w(strTrimSubstring2, "server_max_window_bits", true)) {
                                    if (numM2 != null) {
                                        z12 = true;
                                    }
                                    numM2 = strV0 == null ? null : s.m(strV0);
                                    if (numM2 == null) {
                                        z12 = true;
                                    }
                                } else if (kotlin.text.t.w(strTrimSubstring2, "server_no_context_takeover", true)) {
                                    if (z11) {
                                        z12 = true;
                                    }
                                    if (strV0 != null) {
                                        z12 = true;
                                    }
                                    z11 = true;
                                } else {
                                    z12 = true;
                                }
                            }
                            z6 = true;
                        } else {
                            i12 = i13;
                            z12 = true;
                        }
                    }
                }
                i10 = i11;
            }
            return new WebSocketExtensions(z6, numM, z10, numM2, z11, z12);
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z6, Integer num, boolean z10, Integer num2, boolean z11, boolean z12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = webSocketExtensions.perMessageDeflate;
        }
        if ((i10 & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        Integer num3 = num;
        if ((i10 & 4) != 0) {
            z10 = webSocketExtensions.clientNoContextTakeover;
        }
        boolean z13 = z10;
        if ((i10 & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        Integer num4 = num2;
        if ((i10 & 16) != 0) {
            z11 = webSocketExtensions.serverNoContextTakeover;
        }
        boolean z14 = z11;
        if ((i10 & 32) != 0) {
            z12 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z6, num3, z13, num4, z14, z12);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    @Nullable
    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    @Nullable
    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    @NotNull
    public final WebSocketExtensions copy(boolean z6, @Nullable Integer num, boolean z10, @Nullable Integer num2, boolean z11, boolean z12) {
        return new WebSocketExtensions(z6, num, z10, num2, z11, z12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && t.e(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && t.e(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public int hashCode() {
        boolean z6 = this.perMessageDeflate;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        int i10 = r1 * 31;
        Integer num = this.clientMaxWindowBits;
        int iHashCode = (i10 + (num == null ? 0 : num.hashCode())) * 31;
        boolean z10 = this.clientNoContextTakeover;
        ?? r5 = z10;
        if (z10) {
            r5 = 1;
        }
        int i11 = (iHashCode + r5) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int iHashCode2 = (i11 + (num2 != null ? num2.hashCode() : 0)) * 31;
        boolean z11 = this.serverNoContextTakeover;
        ?? r10 = z11;
        if (z11) {
            r10 = 1;
        }
        int i12 = (iHashCode2 + r10) * 31;
        boolean z12 = this.unknownValues;
        return i12 + (z12 ? 1 : z12);
    }

    public final boolean noContextTakeover(boolean z6) {
        return z6 ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    @NotNull
    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ')';
    }

    public WebSocketExtensions(boolean z6, @Nullable Integer num, boolean z10, @Nullable Integer num2, boolean z11, boolean z12) {
        this.perMessageDeflate = z6;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z10;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z11;
        this.unknownValues = z12;
    }

    public /* synthetic */ WebSocketExtensions(boolean z6, Integer num, boolean z10, Integer num2, boolean z11, boolean z12, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? false : z10, (i10 & 8) == 0 ? num2 : null, (i10 & 16) != 0 ? false : z11, (i10 & 32) != 0 ? false : z12);
    }
}
