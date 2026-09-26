package com.narvii.account.mobile;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;
import java.text.Collator;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.slf4j.c;

/* JADX INFO: loaded from: classes11.dex */
public class CountryInfoR implements Comparable<CountryInfoR> {
    private final Collator collator;
    public final int countryCode;
    public final String countryName;
    public final String isoCode;

    public CountryInfoR(int i10, String str, String str2) {
        Collator collator = Collator.getInstance(Locale.getDefault());
        this.collator = collator;
        collator.setStrength(0);
        this.countryCode = i10;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.isoCode = str;
            this.countryName = str2;
        } else {
            Locale locale = !TextUtils.isEmpty(str) ? new Locale("", str) : new Locale("", "US");
            this.countryName = locale.getDisplayName();
            this.isoCode = locale.getCountry();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CountryInfoR countryInfoR = (CountryInfoR) obj;
        return TextUtils.equals(this.isoCode, countryInfoR.isoCode) & true & (this.countryCode == countryInfoR.countryCode);
    }

    public boolean isGDPR() {
        return Arrays.asList("AT", "BE", "BG", "HR", "CY", "CZ", "DK", "EE", "FI", "FR", "DE", "GR", "HU", "IE", "IT", "LV", "LT", "LU", "MT", "NL", "PL", "PT", "RO", "SK", "SI", "ES", "SE", "GB").indexOf(this.isoCode.toUpperCase(Locale.US)) >= 0;
    }

    public static int getMinAge(@Nullable CountryInfoR countryInfoR) {
        return (countryInfoR == null || !countryInfoR.isGDPR()) ? 13 : 16;
    }

    @Override // java.lang.Comparable
    public int compareTo(CountryInfoR countryInfoR) {
        return this.collator.compare(this.countryName, countryInfoR.countryName);
    }

    public int hashCode() {
        return (((this.isoCode.hashCode() * 31) + this.countryName.hashCode()) * 31) + this.countryCode;
    }

    public String toString() {
        return this.countryName + " +" + this.isoCode + c.ANY_NON_NULL_MARKER + this.countryCode;
    }

    public boolean isGDPR(Date date) {
        List listAsList = Arrays.asList("BE", "DK", "EE", "FI", "LV", "MT", "NO", "PT", "SE", "UK");
        String str = this.isoCode;
        Locale locale = Locale.US;
        boolean zContains = listAsList.contains(str.toUpperCase(locale));
        boolean zContains2 = Arrays.asList("AT", "BG", "CY", "IT", "LT", "ES").contains(this.isoCode.toUpperCase(locale));
        boolean zContains3 = Arrays.asList("CZ", "FR", "GR").contains(this.isoCode.toUpperCase(locale));
        boolean zContains4 = Arrays.asList("HR", "DE", "HU", "IE", "LU", "PL", "RO", "SK", "SL", "CH", "CH", "NL").contains(this.isoCode.toUpperCase(locale));
        int age = Utils.getAge(date);
        if (age < 13) {
            return true;
        }
        if (age == 13) {
            return zContains || zContains2 || zContains3 || zContains4;
        }
        if (age == 14) {
            return zContains2 || zContains3 || zContains4;
        }
        if (age == 15) {
            return zContains3 || zContains4;
        }
        if (age == 16) {
            return zContains4;
        }
        return false;
    }

    public CountryInfoR(Locale locale, int i10) {
        this.collator = Collator.getInstance(Locale.getDefault());
        this.countryName = locale.getDisplayName();
        this.isoCode = locale.getCountry();
        this.countryCode = i10;
    }
}
