package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class e0 {

    @NotNull
    private static final a Companion = new a(null);

    @Deprecated
    @NotNull
    private static final long[] EMPTY_HIGH_MARKS = new long[0];

    @NotNull
    private final SerialDescriptor descriptor;

    @NotNull
    private final long[] highMarksArray;
    private long lowerMarks;

    @NotNull
    private final e8.p<SerialDescriptor, Integer, Boolean> readIfAbsent;

    private static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e0(@NotNull SerialDescriptor descriptor, @NotNull e8.p<? super SerialDescriptor, ? super Integer, Boolean> readIfAbsent) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(readIfAbsent, "readIfAbsent");
        this.descriptor = descriptor;
        this.readIfAbsent = readIfAbsent;
        int iE = descriptor.e();
        if (iE <= 64) {
            this.lowerMarks = iE != 64 ? (-1) << iE : 0L;
            this.highMarksArray = EMPTY_HIGH_MARKS;
        } else {
            this.lowerMarks = 0L;
            this.highMarksArray = e(iE);
        }
    }

    private final void b(int i10) {
        int i11 = (i10 >>> 6) - 1;
        long[] jArr = this.highMarksArray;
        jArr[i11] = jArr[i11] | (1 << (i10 & 63));
    }

    private final int c() {
        int length = this.highMarksArray.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            int i12 = i11 * 64;
            long j6 = this.highMarksArray[i10];
            while (j6 != -1) {
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j6);
                j6 |= 1 << iNumberOfTrailingZeros;
                int i13 = iNumberOfTrailingZeros + i12;
                if (this.readIfAbsent.invoke(this.descriptor, Integer.valueOf(i13)).booleanValue()) {
                    this.highMarksArray[i10] = j6;
                    return i13;
                }
            }
            this.highMarksArray[i10] = j6;
            i10 = i11;
        }
        return -1;
    }

    private final long[] e(int i10) {
        long[] jArr = new long[(i10 - 1) >>> 6];
        if ((i10 & 63) != 0) {
            jArr[kotlin.collections.p.Q(jArr)] = (-1) << i10;
        }
        return jArr;
    }

    public final void a(int i10) {
        if (i10 < 64) {
            this.lowerMarks |= 1 << i10;
        } else {
            b(i10);
        }
    }

    public final int d() {
        int iNumberOfTrailingZeros;
        int iE = this.descriptor.e();
        do {
            long j6 = this.lowerMarks;
            if (j6 == -1) {
                if (iE > 64) {
                    return c();
                }
                return -1;
            }
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j6);
            this.lowerMarks |= 1 << iNumberOfTrailingZeros;
        } while (!this.readIfAbsent.invoke(this.descriptor, Integer.valueOf(iNumberOfTrailingZeros)).booleanValue());
        return iNumberOfTrailingZeros;
    }
}
