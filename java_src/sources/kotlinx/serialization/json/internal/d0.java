package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class d0 {
    private int currentDepth;

    @NotNull
    private Object[] currentObjectPath = new Object[8];

    @NotNull
    private int[] indicies;

    private static final class a {

        @NotNull
        public static final a INSTANCE = new a();

        private a() {
        }
    }

    private final void e() {
        int i10 = this.currentDepth * 2;
        Object[] objArrCopyOf = Arrays.copyOf(this.currentObjectPath, i10);
        kotlin.jvm.internal.t.i(objArrCopyOf, "copyOf(this, newSize)");
        this.currentObjectPath = objArrCopyOf;
        int[] iArrCopyOf = Arrays.copyOf(this.indicies, i10);
        kotlin.jvm.internal.t.i(iArrCopyOf, "copyOf(this, newSize)");
        this.indicies = iArrCopyOf;
    }

    @NotNull
    public final String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("$");
        int i10 = this.currentDepth + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = this.currentObjectPath[i11];
            if (obj instanceof SerialDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                if (!kotlin.jvm.internal.t.e(serialDescriptor.getKind(), kotlinx.serialization.descriptors.j.b.INSTANCE)) {
                    int i12 = this.indicies[i11];
                    if (i12 >= 0) {
                        sb.append(".");
                        sb.append(serialDescriptor.f(i12));
                    }
                } else if (this.indicies[i11] != -1) {
                    sb.append("[");
                    sb.append(this.indicies[i11]);
                    sb.append("]");
                }
            } else if (obj != a.INSTANCE) {
                sb.append("[");
                sb.append("'");
                sb.append(obj);
                sb.append("'");
                sb.append("]");
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final void b() {
        int i10 = this.currentDepth;
        int[] iArr = this.indicies;
        if (iArr[i10] == -2) {
            iArr[i10] = -1;
            this.currentDepth = i10 - 1;
        }
        int i11 = this.currentDepth;
        if (i11 != -1) {
            this.currentDepth = i11 - 1;
        }
    }

    public final void c(@NotNull SerialDescriptor sd) {
        kotlin.jvm.internal.t.j(sd, "sd");
        int i10 = this.currentDepth + 1;
        this.currentDepth = i10;
        if (i10 == this.currentObjectPath.length) {
            e();
        }
        this.currentObjectPath[i10] = sd;
    }

    public final void d() {
        int[] iArr = this.indicies;
        int i10 = this.currentDepth;
        if (iArr[i10] == -2) {
            this.currentObjectPath[i10] = a.INSTANCE;
        }
    }

    public final void f(@Nullable Object obj) {
        int[] iArr = this.indicies;
        int i10 = this.currentDepth;
        if (iArr[i10] != -2) {
            int i11 = i10 + 1;
            this.currentDepth = i11;
            if (i11 == this.currentObjectPath.length) {
                e();
            }
        }
        Object[] objArr = this.currentObjectPath;
        int i12 = this.currentDepth;
        objArr[i12] = obj;
        this.indicies[i12] = -2;
    }

    public final void g(int i10) {
        this.indicies[this.currentDepth] = i10;
    }

    public d0() {
        int[] iArr = new int[8];
        for (int i10 = 0; i10 < 8; i10++) {
            iArr[i10] = -1;
        }
        this.indicies = iArr;
        this.currentDepth = -1;
    }

    @NotNull
    public String toString() {
        return a();
    }
}
