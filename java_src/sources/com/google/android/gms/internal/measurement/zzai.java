package com.google.android.gms.internal.measurement;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.remoteconfig.a;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zzai implements zzaq {
    private final Double zza;

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Double zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Iterator<zzaq> zzh() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzai) {
            return this.zza.equals(((zzai) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        if ("toString".equals(str)) {
            return new zzas(zzf());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", zzf(), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zzc() {
        return new zzai(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Boolean zzd() {
        return Boolean.valueOf((Double.isNaN(this.zza.doubleValue()) || this.zza.doubleValue() == a.DEFAULT_VALUE_FOR_DOUBLE) ? false : true);
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final String zzf() {
        if (Double.isNaN(this.zza.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(this.zza.doubleValue())) {
            return this.zza.doubleValue() > a.DEFAULT_VALUE_FOR_DOUBLE ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(this.zza.doubleValue());
        BigDecimal bigDecimal = bigDecimalValueOf.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalValueOf.stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimal.scale() > 0 ? bigDecimal.precision() : bigDecimal.scale()) - 1);
        String str = decimalFormat.format(bigDecimal);
        int iIndexOf = str.indexOf(ExifInterface.LONGITUDE_EAST);
        if (iIndexOf <= 0) {
            return str;
        }
        int i10 = Integer.parseInt(str.substring(iIndexOf + 1));
        return ((i10 >= 0 || i10 <= -7) && (i10 < 0 || i10 >= 21)) ? str.replace("E-", "e-").replace(ExifInterface.LONGITUDE_EAST, "e+") : bigDecimal.toPlainString();
    }

    public zzai(Double d) {
        if (d == null) {
            this.zza = Double.valueOf(Double.NaN);
        } else {
            this.zza = d;
        }
    }

    public final String toString() {
        return zzf();
    }
}
