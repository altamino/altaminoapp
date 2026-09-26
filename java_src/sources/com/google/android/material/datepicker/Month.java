package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes9.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();
    final int daysInMonth;
    final int daysInWeek;

    @NonNull
    private final Calendar firstOfMonth;

    @Nullable
    private String longName;
    final int month;
    final long timeInMillis;
    final int year;

    class a implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Month[] newArray(int i10) {
            return new Month[i10];
        }

        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Month createFromParcel(@NonNull Parcel parcel) {
            return Month.c(parcel.readInt(), parcel.readInt());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.month == month.month && this.year == month.year;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.month), Integer.valueOf(this.year)});
    }

    @NonNull
    static Month h() {
        return new Month(s.i());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull Month month) {
        return this.firstOfMonth.compareTo(month.firstOfMonth);
    }

    int i() {
        int firstDayOfWeek = this.firstOfMonth.get(7) - this.firstOfMonth.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.daysInWeek : firstDayOfWeek;
    }

    long k(int i10) {
        Calendar calendarD = s.d(this.firstOfMonth);
        calendarD.set(5, i10);
        return calendarD.getTimeInMillis();
    }

    int l(long j6) {
        Calendar calendarD = s.d(this.firstOfMonth);
        calendarD.setTimeInMillis(j6);
        return calendarD.get(5);
    }

    @NonNull
    String n() {
        if (this.longName == null) {
            this.longName = d.c(this.firstOfMonth.getTimeInMillis());
        }
        return this.longName;
    }

    long o() {
        return this.firstOfMonth.getTimeInMillis();
    }

    @NonNull
    Month p(int i10) {
        Calendar calendarD = s.d(this.firstOfMonth);
        calendarD.add(2, i10);
        return new Month(calendarD);
    }

    int s(@NonNull Month month) {
        if (this.firstOfMonth instanceof GregorianCalendar) {
            return ((month.year - this.year) * 12) + (month.month - this.month);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.year);
        parcel.writeInt(this.month);
    }

    private Month(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarD = s.d(calendar);
        this.firstOfMonth = calendarD;
        this.month = calendarD.get(2);
        this.year = calendarD.get(1);
        this.daysInWeek = calendarD.getMaximum(7);
        this.daysInMonth = calendarD.getActualMaximum(5);
        this.timeInMillis = calendarD.getTimeInMillis();
    }

    @NonNull
    static Month c(int i10, int i11) {
        Calendar calendarK = s.k();
        calendarK.set(1, i10);
        calendarK.set(2, i11);
        return new Month(calendarK);
    }

    @NonNull
    static Month e(long j6) {
        Calendar calendarK = s.k();
        calendarK.setTimeInMillis(j6);
        return new Month(calendarK);
    }
}
