package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class w extends kotlinx.serialization.encoding.a {

    @NotNull
    private final a lexer;

    @NotNull
    private final kotlinx.serialization.modules.c serializersModule;

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public kotlinx.serialization.modules.c a() {
        return this.serializersModule;
    }

    public w(@NotNull a lexer, @NotNull kotlinx.serialization.json.a json) {
        kotlin.jvm.internal.t.j(lexer, "lexer");
        kotlin.jvm.internal.t.j(json, "json");
        this.lexer = lexer;
        this.serializersModule = json.a();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public byte H() {
        a aVar = this.lexer;
        String strS = aVar.s();
        try {
            return kotlin.text.a0.a(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UByte' for input '" + strS + '\'', 0, null, 6, null);
            throw new w7.i();
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public long h() {
        a aVar = this.lexer;
        String strS = aVar.s();
        try {
            return kotlin.text.a0.g(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'ULong' for input '" + strS + '\'', 0, null, 6, null);
            throw new w7.i();
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public short m() {
        a aVar = this.lexer;
        String strS = aVar.s();
        try {
            return kotlin.text.a0.j(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UShort' for input '" + strS + '\'', 0, null, 6, null);
            throw new w7.i();
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int u() {
        a aVar = this.lexer;
        String strS = aVar.s();
        try {
            return kotlin.text.a0.d(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UInt' for input '" + strS + '\'', 0, null, 6, null);
            throw new w7.i();
        }
    }

    @Override // kotlinx.serialization.encoding.c
    public int w(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        throw new IllegalStateException("unsupported".toString());
    }
}
