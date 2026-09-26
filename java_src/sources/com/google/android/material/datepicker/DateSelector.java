package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Pair;
import java.util.Collection;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public interface DateSelector<S> extends Parcelable {
    boolean L();

    @NonNull
    Collection<Long> O();

    @Nullable
    S Q();

    void U(long j6);

    @NonNull
    String b0(Context context);

    @StyleRes
    int d(Context context);

    @NonNull
    Collection<Pair<Long, Long>> g0();

    @NonNull
    View j(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, @NonNull CalendarConstraints calendarConstraints, @NonNull l<S> lVar);
}
