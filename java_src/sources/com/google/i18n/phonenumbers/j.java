package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class j implements Externalizable {
    private static final long serialVersionUID = 1;
    private boolean hasCarrierSpecific;
    private boolean hasCountryCode;
    private boolean hasEmergency;
    private boolean hasFixedLine;
    private boolean hasGeneralDesc;
    private boolean hasId;
    private boolean hasInternationalPrefix;
    private boolean hasLeadingDigits;
    private boolean hasLeadingZeroPossible;
    private boolean hasMainCountryForCode;
    private boolean hasMobile;
    private boolean hasMobileNumberPortableRegion;
    private boolean hasNationalPrefix;
    private boolean hasNationalPrefixForParsing;
    private boolean hasNationalPrefixTransformRule;
    private boolean hasNoInternationalDialling;
    private boolean hasPager;
    private boolean hasPersonalNumber;
    private boolean hasPreferredExtnPrefix;
    private boolean hasPreferredInternationalPrefix;
    private boolean hasPremiumRate;
    private boolean hasSameMobileAndFixedLinePattern;
    private boolean hasSharedCost;
    private boolean hasShortCode;
    private boolean hasSmsServices;
    private boolean hasStandardRate;
    private boolean hasTollFree;
    private boolean hasUan;
    private boolean hasVoicemail;
    private boolean hasVoip;
    private l generalDesc_ = null;
    private l fixedLine_ = null;
    private l mobile_ = null;
    private l tollFree_ = null;
    private l premiumRate_ = null;
    private l sharedCost_ = null;
    private l personalNumber_ = null;
    private l voip_ = null;
    private l pager_ = null;
    private l uan_ = null;
    private l emergency_ = null;
    private l voicemail_ = null;
    private l shortCode_ = null;
    private l standardRate_ = null;
    private l carrierSpecific_ = null;
    private l smsServices_ = null;
    private l noInternationalDialling_ = null;
    private String id_ = "";
    private int countryCode_ = 0;
    private String internationalPrefix_ = "";
    private String preferredInternationalPrefix_ = "";
    private String nationalPrefix_ = "";
    private String preferredExtnPrefix_ = "";
    private String nationalPrefixForParsing_ = "";
    private String nationalPrefixTransformRule_ = "";
    private boolean sameMobileAndFixedLinePattern_ = false;
    private List<i> numberFormat_ = new ArrayList();
    private List<i> intlNumberFormat_ = new ArrayList();
    private boolean mainCountryForCode_ = false;
    private String leadingDigits_ = "";
    private boolean leadingZeroPossible_ = false;
    private boolean mobileNumberPortableRegion_ = false;

    public j A(boolean z6) {
        this.hasMainCountryForCode = true;
        this.mainCountryForCode_ = z6;
        return this;
    }

    public j C(boolean z6) {
        this.hasMobileNumberPortableRegion = true;
        this.mobileNumberPortableRegion_ = z6;
        return this;
    }

    public j D(String str) {
        this.hasNationalPrefix = true;
        this.nationalPrefix_ = str;
        return this;
    }

    public j E(String str) {
        this.hasNationalPrefixForParsing = true;
        this.nationalPrefixForParsing_ = str;
        return this;
    }

    public j F(String str) {
        this.hasNationalPrefixTransformRule = true;
        this.nationalPrefixTransformRule_ = str;
        return this;
    }

    public j J(String str) {
        this.hasPreferredExtnPrefix = true;
        this.preferredExtnPrefix_ = str;
        return this;
    }

    public j K(String str) {
        this.hasPreferredInternationalPrefix = true;
        this.preferredInternationalPrefix_ = str;
        return this;
    }

    public j M(boolean z6) {
        this.hasSameMobileAndFixedLinePattern = true;
        this.sameMobileAndFixedLinePattern_ = z6;
        return this;
    }

    public int a() {
        return this.countryCode_;
    }

    public l b() {
        return this.fixedLine_;
    }

    public l c() {
        return this.generalDesc_;
    }

    public String d() {
        return this.internationalPrefix_;
    }

    public l e() {
        return this.mobile_;
    }

    public String f() {
        return this.nationalPrefixForParsing_;
    }

    public String g() {
        return this.nationalPrefixTransformRule_;
    }

    public l h() {
        return this.pager_;
    }

    public l i() {
        return this.personalNumber_;
    }

    public l j() {
        return this.premiumRate_;
    }

    public l k() {
        return this.sharedCost_;
    }

    public l l() {
        return this.tollFree_;
    }

    public l m() {
        return this.uan_;
    }

    public l n() {
        return this.voicemail_;
    }

    public l o() {
        return this.voip_;
    }

    public j s(int i10) {
        this.hasCountryCode = true;
        this.countryCode_ = i10;
        return this;
    }

    public j w(String str) {
        this.hasId = true;
        this.id_ = str;
        return this;
    }

    public j x(String str) {
        this.hasInternationalPrefix = true;
        this.internationalPrefix_ = str;
        return this;
    }

    public j y(String str) {
        this.hasLeadingDigits = true;
        this.leadingDigits_ = str;
        return this;
    }

    public j z(boolean z6) {
        this.hasLeadingZeroPossible = true;
        this.leadingZeroPossible_ = z6;
        return this;
    }

    public int p() {
        return this.intlNumberFormat_.size();
    }

    public int q() {
        return this.numberFormat_.size();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeBoolean(this.hasGeneralDesc);
        if (this.hasGeneralDesc) {
            this.generalDesc_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasFixedLine);
        if (this.hasFixedLine) {
            this.fixedLine_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasMobile);
        if (this.hasMobile) {
            this.mobile_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasTollFree);
        if (this.hasTollFree) {
            this.tollFree_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasPremiumRate);
        if (this.hasPremiumRate) {
            this.premiumRate_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasSharedCost);
        if (this.hasSharedCost) {
            this.sharedCost_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasPersonalNumber);
        if (this.hasPersonalNumber) {
            this.personalNumber_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasVoip);
        if (this.hasVoip) {
            this.voip_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasPager);
        if (this.hasPager) {
            this.pager_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasUan);
        if (this.hasUan) {
            this.uan_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasEmergency);
        if (this.hasEmergency) {
            this.emergency_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasVoicemail);
        if (this.hasVoicemail) {
            this.voicemail_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasShortCode);
        if (this.hasShortCode) {
            this.shortCode_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasStandardRate);
        if (this.hasStandardRate) {
            this.standardRate_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasCarrierSpecific);
        if (this.hasCarrierSpecific) {
            this.carrierSpecific_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasSmsServices);
        if (this.hasSmsServices) {
            this.smsServices_.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.hasNoInternationalDialling);
        if (this.hasNoInternationalDialling) {
            this.noInternationalDialling_.writeExternal(objectOutput);
        }
        objectOutput.writeUTF(this.id_);
        objectOutput.writeInt(this.countryCode_);
        objectOutput.writeUTF(this.internationalPrefix_);
        objectOutput.writeBoolean(this.hasPreferredInternationalPrefix);
        if (this.hasPreferredInternationalPrefix) {
            objectOutput.writeUTF(this.preferredInternationalPrefix_);
        }
        objectOutput.writeBoolean(this.hasNationalPrefix);
        if (this.hasNationalPrefix) {
            objectOutput.writeUTF(this.nationalPrefix_);
        }
        objectOutput.writeBoolean(this.hasPreferredExtnPrefix);
        if (this.hasPreferredExtnPrefix) {
            objectOutput.writeUTF(this.preferredExtnPrefix_);
        }
        objectOutput.writeBoolean(this.hasNationalPrefixForParsing);
        if (this.hasNationalPrefixForParsing) {
            objectOutput.writeUTF(this.nationalPrefixForParsing_);
        }
        objectOutput.writeBoolean(this.hasNationalPrefixTransformRule);
        if (this.hasNationalPrefixTransformRule) {
            objectOutput.writeUTF(this.nationalPrefixTransformRule_);
        }
        objectOutput.writeBoolean(this.sameMobileAndFixedLinePattern_);
        int iQ = q();
        objectOutput.writeInt(iQ);
        for (int i10 = 0; i10 < iQ; i10++) {
            this.numberFormat_.get(i10).writeExternal(objectOutput);
        }
        int iP = p();
        objectOutput.writeInt(iP);
        for (int i11 = 0; i11 < iP; i11++) {
            this.intlNumberFormat_.get(i11).writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.mainCountryForCode_);
        objectOutput.writeBoolean(this.hasLeadingDigits);
        if (this.hasLeadingDigits) {
            objectOutput.writeUTF(this.leadingDigits_);
        }
        objectOutput.writeBoolean(this.leadingZeroPossible_);
        objectOutput.writeBoolean(this.mobileNumberPortableRegion_);
    }

    public j B(l lVar) {
        lVar.getClass();
        this.hasMobile = true;
        this.mobile_ = lVar;
        return this;
    }

    public j G(l lVar) {
        lVar.getClass();
        this.hasNoInternationalDialling = true;
        this.noInternationalDialling_ = lVar;
        return this;
    }

    public j H(l lVar) {
        lVar.getClass();
        this.hasPager = true;
        this.pager_ = lVar;
        return this;
    }

    public j I(l lVar) {
        lVar.getClass();
        this.hasPersonalNumber = true;
        this.personalNumber_ = lVar;
        return this;
    }

    public j L(l lVar) {
        lVar.getClass();
        this.hasPremiumRate = true;
        this.premiumRate_ = lVar;
        return this;
    }

    public j N(l lVar) {
        lVar.getClass();
        this.hasSharedCost = true;
        this.sharedCost_ = lVar;
        return this;
    }

    public j O(l lVar) {
        lVar.getClass();
        this.hasShortCode = true;
        this.shortCode_ = lVar;
        return this;
    }

    public j P(l lVar) {
        lVar.getClass();
        this.hasSmsServices = true;
        this.smsServices_ = lVar;
        return this;
    }

    public j Q(l lVar) {
        lVar.getClass();
        this.hasStandardRate = true;
        this.standardRate_ = lVar;
        return this;
    }

    public j R(l lVar) {
        lVar.getClass();
        this.hasTollFree = true;
        this.tollFree_ = lVar;
        return this;
    }

    public j S(l lVar) {
        lVar.getClass();
        this.hasUan = true;
        this.uan_ = lVar;
        return this;
    }

    public j T(l lVar) {
        lVar.getClass();
        this.hasVoicemail = true;
        this.voicemail_ = lVar;
        return this;
    }

    public j U(l lVar) {
        lVar.getClass();
        this.hasVoip = true;
        this.voip_ = lVar;
        return this;
    }

    public j r(l lVar) {
        lVar.getClass();
        this.hasCarrierSpecific = true;
        this.carrierSpecific_ = lVar;
        return this;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        if (objectInput.readBoolean()) {
            l lVar = new l();
            lVar.readExternal(objectInput);
            v(lVar);
        }
        if (objectInput.readBoolean()) {
            l lVar2 = new l();
            lVar2.readExternal(objectInput);
            u(lVar2);
        }
        if (objectInput.readBoolean()) {
            l lVar3 = new l();
            lVar3.readExternal(objectInput);
            B(lVar3);
        }
        if (objectInput.readBoolean()) {
            l lVar4 = new l();
            lVar4.readExternal(objectInput);
            R(lVar4);
        }
        if (objectInput.readBoolean()) {
            l lVar5 = new l();
            lVar5.readExternal(objectInput);
            L(lVar5);
        }
        if (objectInput.readBoolean()) {
            l lVar6 = new l();
            lVar6.readExternal(objectInput);
            N(lVar6);
        }
        if (objectInput.readBoolean()) {
            l lVar7 = new l();
            lVar7.readExternal(objectInput);
            I(lVar7);
        }
        if (objectInput.readBoolean()) {
            l lVar8 = new l();
            lVar8.readExternal(objectInput);
            U(lVar8);
        }
        if (objectInput.readBoolean()) {
            l lVar9 = new l();
            lVar9.readExternal(objectInput);
            H(lVar9);
        }
        if (objectInput.readBoolean()) {
            l lVar10 = new l();
            lVar10.readExternal(objectInput);
            S(lVar10);
        }
        if (objectInput.readBoolean()) {
            l lVar11 = new l();
            lVar11.readExternal(objectInput);
            t(lVar11);
        }
        if (objectInput.readBoolean()) {
            l lVar12 = new l();
            lVar12.readExternal(objectInput);
            T(lVar12);
        }
        if (objectInput.readBoolean()) {
            l lVar13 = new l();
            lVar13.readExternal(objectInput);
            O(lVar13);
        }
        if (objectInput.readBoolean()) {
            l lVar14 = new l();
            lVar14.readExternal(objectInput);
            Q(lVar14);
        }
        if (objectInput.readBoolean()) {
            l lVar15 = new l();
            lVar15.readExternal(objectInput);
            r(lVar15);
        }
        if (objectInput.readBoolean()) {
            l lVar16 = new l();
            lVar16.readExternal(objectInput);
            P(lVar16);
        }
        if (objectInput.readBoolean()) {
            l lVar17 = new l();
            lVar17.readExternal(objectInput);
            G(lVar17);
        }
        w(objectInput.readUTF());
        s(objectInput.readInt());
        x(objectInput.readUTF());
        if (objectInput.readBoolean()) {
            K(objectInput.readUTF());
        }
        if (objectInput.readBoolean()) {
            D(objectInput.readUTF());
        }
        if (objectInput.readBoolean()) {
            J(objectInput.readUTF());
        }
        if (objectInput.readBoolean()) {
            E(objectInput.readUTF());
        }
        if (objectInput.readBoolean()) {
            F(objectInput.readUTF());
        }
        M(objectInput.readBoolean());
        int i10 = objectInput.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            i iVar = new i();
            iVar.readExternal(objectInput);
            this.numberFormat_.add(iVar);
        }
        int i12 = objectInput.readInt();
        for (int i13 = 0; i13 < i12; i13++) {
            i iVar2 = new i();
            iVar2.readExternal(objectInput);
            this.intlNumberFormat_.add(iVar2);
        }
        A(objectInput.readBoolean());
        if (objectInput.readBoolean()) {
            y(objectInput.readUTF());
        }
        z(objectInput.readBoolean());
        C(objectInput.readBoolean());
    }

    public j t(l lVar) {
        lVar.getClass();
        this.hasEmergency = true;
        this.emergency_ = lVar;
        return this;
    }

    public j u(l lVar) {
        lVar.getClass();
        this.hasFixedLine = true;
        this.fixedLine_ = lVar;
        return this;
    }

    public j v(l lVar) {
        lVar.getClass();
        this.hasGeneralDesc = true;
        this.generalDesc_ = lVar;
        return this;
    }
}
