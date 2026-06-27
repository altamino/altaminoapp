package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzbl;

/* loaded from: classes2.dex */
final /* synthetic */ class zzp {
    static final /* synthetic */ int[] zzds;
    static final /* synthetic */ int[] zzdt = new int[zzbl.zza.zzb.values().length];

    static {
        try {
            zzdt[zzbl.zza.zzb.LESS_THAN.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzdt[zzbl.zza.zzb.GREATER_THAN.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzdt[zzbl.zza.zzb.EQUAL.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            zzdt[zzbl.zza.zzb.BETWEEN.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        zzds = new int[zzbl.zzb.EnumC0021zzb.values().length];
        try {
            zzds[zzbl.zzb.EnumC0021zzb.REGEXP.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zzds[zzbl.zzb.EnumC0021zzb.BEGINS_WITH.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            zzds[zzbl.zzb.EnumC0021zzb.ENDS_WITH.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            zzds[zzbl.zzb.EnumC0021zzb.PARTIAL.ordinal()] = 4;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            zzds[zzbl.zzb.EnumC0021zzb.EXACT.ordinal()] = 5;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            zzds[zzbl.zzb.EnumC0021zzb.IN_LIST.ordinal()] = 6;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
