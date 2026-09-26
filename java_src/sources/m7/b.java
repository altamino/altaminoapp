package m7;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements Comparable<b> {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final b START = m7.a.a(0L);
    private final int dayOfMonth;

    @NotNull
    private final d dayOfWeek;
    private final int dayOfYear;
    private final int hours;
    private final int minutes;

    @NotNull
    private final c month;
    private final int seconds;
    private final long timestamp;
    private final int year;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.seconds == bVar.seconds && this.minutes == bVar.minutes && this.hours == bVar.hours && this.dayOfWeek == bVar.dayOfWeek && this.dayOfMonth == bVar.dayOfMonth && this.dayOfYear == bVar.dayOfYear && this.month == bVar.month && this.year == bVar.year && this.timestamp == bVar.timestamp;
    }

    public int hashCode() {
        return (((((((((((((((this.seconds * 31) + this.minutes) * 31) + this.hours) * 31) + this.dayOfWeek.hashCode()) * 31) + this.dayOfMonth) * 31) + this.dayOfYear) * 31) + this.month.hashCode()) * 31) + this.year) * 31) + i.a.a(this.timestamp);
    }

    @NotNull
    public String toString() {
        return "GMTDate(seconds=" + this.seconds + ", minutes=" + this.minutes + ", hours=" + this.hours + ", dayOfWeek=" + this.dayOfWeek + ", dayOfMonth=" + this.dayOfMonth + ", dayOfYear=" + this.dayOfYear + ", month=" + this.month + ", year=" + this.year + ", timestamp=" + this.timestamp + ')';
    }

    public b(int i10, int i11, int i12, @NotNull d dayOfWeek, int i13, int i14, @NotNull c month, int i15, long j6) {
        t.j(dayOfWeek, "dayOfWeek");
        t.j(month, "month");
        this.seconds = i10;
        this.minutes = i11;
        this.hours = i12;
        this.dayOfWeek = dayOfWeek;
        this.dayOfMonth = i13;
        this.dayOfYear = i14;
        this.month = month;
        this.year = i15;
        this.timestamp = j6;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NotNull b other) {
        t.j(other, "other");
        return t.m(this.timestamp, other.timestamp);
    }
}
