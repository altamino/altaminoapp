package k7;

import io.ktor.http.d;
import io.ktor.http.v;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class c extends b.a {

    @NotNull
    private final byte[] bytes;

    @NotNull
    private final io.ktor.http.c contentType;

    @Nullable
    private final v status;

    @NotNull
    private final String text;

    public /* synthetic */ c(String str, io.ktor.http.c cVar, v vVar, int i10, k kVar) {
        this(str, cVar, (i10 & 4) != 0 ? null : vVar);
    }

    @Override // k7.b
    @NotNull
    public io.ktor.http.c b() {
        return this.contentType;
    }

    @Override // k7.b.a
    @NotNull
    public byte[] d() {
        return this.bytes;
    }

    public c(@NotNull String text, @NotNull io.ktor.http.c contentType, @Nullable v vVar) {
        byte[] bArrG;
        t.j(text, "text");
        t.j(contentType, "contentType");
        this.text = text;
        this.contentType = contentType;
        this.status = vVar;
        Charset charsetA = d.a(b());
        charsetA = charsetA == null ? kotlin.text.d.UTF_8 : charsetA;
        if (t.e(charsetA, kotlin.text.d.UTF_8)) {
            bArrG = kotlin.text.t.t(text);
        } else {
            CharsetEncoder charsetEncoderNewEncoder = charsetA.newEncoder();
            t.i(charsetEncoderNewEncoder, "charset.newEncoder()");
            bArrG = q7.a.g(charsetEncoderNewEncoder, text, 0, text.length());
        }
        this.bytes = bArrG;
    }

    @Override // k7.b
    @NotNull
    public Long a() {
        return Long.valueOf(this.bytes.length);
    }

    @NotNull
    public String toString() {
        return "TextContent[" + b() + "] \"" + w.k1(this.text, 30) + kotlinx.serialization.json.internal.b.STRING;
    }
}
