package x7;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;
import kotlin.collections.r0;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class i implements Externalizable {

    @NotNull
    public static final a Companion = new a(null);
    private static final long serialVersionUID = 0;

    @NotNull
    private Map<?, ?> map;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    public i(@NotNull Map<?, ?> map) {
        t.j(map, "map");
        this.map = map;
    }

    private final Object readResolve() {
        return this.map;
    }

    public i() {
        this(s0.h());
    }

    @Override // java.io.Externalizable
    public void readExternal(@NotNull ObjectInput input) throws IOException {
        t.j(input, "input");
        byte b7 = input.readByte();
        if (b7 != 0) {
            throw new InvalidObjectException("Unsupported flags value: " + ((int) b7));
        }
        int i10 = input.readInt();
        if (i10 < 0) {
            throw new InvalidObjectException("Illegal size value: " + i10 + '.');
        }
        Map mapD = r0.d(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            mapD.put(input.readObject(), input.readObject());
        }
        this.map = r0.b(mapD);
    }

    @Override // java.io.Externalizable
    public void writeExternal(@NotNull ObjectOutput output) throws IOException {
        t.j(output, "output");
        output.writeByte(0);
        output.writeInt(this.map.size());
        for (Map.Entry<?, ?> entry : this.map.entrySet()) {
            output.writeObject(entry.getKey());
            output.writeObject(entry.getValue());
        }
    }
}
