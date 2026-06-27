package com.narvii.account.mobile;

import android.text.TextUtils;
import java.text.Collator;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public class CountryInfoR implements Comparable<CountryInfoR> {
    private final Collator collator = Collator.getInstance(Locale.getDefault());
    public final int countryCode;
    public final String countryName;
    public final String isoCode;

    public CountryInfoR(int i, String str, String str2) {
        Locale locale;
        this.collator.setStrength(0);
        this.countryCode = i;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (!TextUtils.isEmpty(str)) {
                locale = new Locale("", str);
            } else {
                locale = new Locale("", "US");
            }
            this.countryName = locale.getDisplayName();
            this.isoCode = locale.getCountry();
            return;
        }
        this.isoCode = str;
        this.countryName = str2;
    }

    public CountryInfoR(Locale locale, int i) {
        this.countryName = locale.getDisplayName();
        this.isoCode = locale.getCountry();
        this.countryCode = i;
    }

    public boolean isGDPR() {
        return Arrays.asList("AT", "BE", "BG", "HR", "CY", "CZ", "DK", "EE", "FI", "FR", "DE", "GR", "HU", "IE", "IT", "LV", "LT", "LU", "MT", "NL", "PL", "PT", "RO", "SK", "SI", "ES", "SE", "GB").indexOf(this.isoCode.toUpperCase(Locale.US)) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CountryInfoR.class != obj.getClass()) {
            return false;
        }
        CountryInfoR countryInfoR = (CountryInfoR) obj;
        return TextUtils.equals(this.isoCode, countryInfoR.isoCode) & true & (this.countryCode == countryInfoR.countryCode);
    }

    public int hashCode() {
        return (((this.isoCode.hashCode() * 31) + this.countryName.hashCode()) * 31) + this.countryCode;
    }

    public String toString() {
        return this.countryName + " +" + this.isoCode + "+" + this.countryCode;
    }

    @Override // java.lang.Comparable
    public int compareTo(CountryInfoR countryInfoR) {
        return this.collator.compare(this.countryName, countryInfoR.countryName);
    }
}
