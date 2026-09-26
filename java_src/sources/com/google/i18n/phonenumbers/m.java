package com.google.i18n.phonenumbers;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public class m implements Serializable {
    private static final long serialVersionUID = 1;
    private boolean hasCountryCode;
    private boolean hasCountryCodeSource;
    private boolean hasExtension;
    private boolean hasItalianLeadingZero;
    private boolean hasNationalNumber;
    private boolean hasNumberOfLeadingZeros;
    private boolean hasPreferredDomesticCarrierCode;
    private boolean hasRawInput;
    private int countryCode_ = 0;
    private long nationalNumber_ = 0;
    private String extension_ = "";
    private boolean italianLeadingZero_ = false;
    private int numberOfLeadingZeros_ = 1;
    private String rawInput_ = "";
    private String preferredDomesticCarrierCode_ = "";
    private a countryCodeSource_ = a.UNSPECIFIED;

    public enum a {
        FROM_NUMBER_WITH_PLUS_SIGN,
        FROM_NUMBER_WITH_IDD,
        FROM_NUMBER_WITHOUT_PLUS_SIGN,
        FROM_DEFAULT_COUNTRY,
        UNSPECIFIED
    }

    public m a() {
        this.hasCountryCodeSource = false;
        this.countryCodeSource_ = a.UNSPECIFIED;
        return this;
    }

    public boolean b(m mVar) {
        if (mVar == null) {
            return false;
        }
        if (this == mVar) {
            return true;
        }
        return this.countryCode_ == mVar.countryCode_ && this.nationalNumber_ == mVar.nationalNumber_ && this.extension_.equals(mVar.extension_) && this.italianLeadingZero_ == mVar.italianLeadingZero_ && this.numberOfLeadingZeros_ == mVar.numberOfLeadingZeros_ && this.rawInput_.equals(mVar.rawInput_) && this.countryCodeSource_ == mVar.countryCodeSource_ && this.preferredDomesticCarrierCode_.equals(mVar.preferredDomesticCarrierCode_) && o() == mVar.o();
    }

    public int c() {
        return this.countryCode_;
    }

    public a d() {
        return this.countryCodeSource_;
    }

    public String e() {
        return this.extension_;
    }

    public long f() {
        return this.nationalNumber_;
    }

    public int g() {
        return this.numberOfLeadingZeros_;
    }

    public String h() {
        return this.preferredDomesticCarrierCode_;
    }

    public String i() {
        return this.rawInput_;
    }

    public boolean j() {
        return this.hasCountryCode;
    }

    public boolean k() {
        return this.hasCountryCodeSource;
    }

    public boolean l() {
        return this.hasExtension;
    }

    public boolean m() {
        return this.hasItalianLeadingZero;
    }

    public boolean n() {
        return this.hasNumberOfLeadingZeros;
    }

    public boolean o() {
        return this.hasPreferredDomesticCarrierCode;
    }

    public boolean p() {
        return this.italianLeadingZero_;
    }

    public m q(int i10) {
        this.hasCountryCode = true;
        this.countryCode_ = i10;
        return this;
    }

    public m t(boolean z6) {
        this.hasItalianLeadingZero = true;
        this.italianLeadingZero_ = z6;
        return this;
    }

    public m u(long j6) {
        this.hasNationalNumber = true;
        this.nationalNumber_ = j6;
        return this;
    }

    public m v(int i10) {
        this.hasNumberOfLeadingZeros = true;
        this.numberOfLeadingZeros_ = i10;
        return this;
    }

    public boolean equals(Object obj) {
        return (obj instanceof m) && b((m) obj);
    }

    public int hashCode() {
        return ((((((((((((((((2173 + c()) * 53) + Long.valueOf(f()).hashCode()) * 53) + e().hashCode()) * 53) + (p() ? 1231 : 1237)) * 53) + g()) * 53) + i().hashCode()) * 53) + d().hashCode()) * 53) + h().hashCode()) * 53) + (o() ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Country Code: ");
        sb.append(this.countryCode_);
        sb.append(" National Number: ");
        sb.append(this.nationalNumber_);
        if (m() && p()) {
            sb.append(" Leading Zero(s): true");
        }
        if (n()) {
            sb.append(" Number of leading zeros: ");
            sb.append(this.numberOfLeadingZeros_);
        }
        if (l()) {
            sb.append(" Extension: ");
            sb.append(this.extension_);
        }
        if (k()) {
            sb.append(" Country Code Source: ");
            sb.append(this.countryCodeSource_);
        }
        if (o()) {
            sb.append(" Preferred Domestic Carrier Code: ");
            sb.append(this.preferredDomesticCarrierCode_);
        }
        return sb.toString();
    }

    public m r(a aVar) {
        aVar.getClass();
        this.hasCountryCodeSource = true;
        this.countryCodeSource_ = aVar;
        return this;
    }

    public m s(String str) {
        str.getClass();
        this.hasExtension = true;
        this.extension_ = str;
        return this;
    }

    public m w(String str) {
        str.getClass();
        this.hasPreferredDomesticCarrierCode = true;
        this.preferredDomesticCarrierCode_ = str;
        return this;
    }

    public m x(String str) {
        str.getClass();
        this.hasRawInput = true;
        this.rawInput_ = str;
        return this;
    }
}
