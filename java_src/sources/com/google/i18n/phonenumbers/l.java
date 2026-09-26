package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class l implements Externalizable {
    private static final long serialVersionUID = 1;
    private boolean hasExampleNumber;
    private boolean hasNationalNumberPattern;
    private String nationalNumberPattern_ = "";
    private List<Integer> possibleLength_ = new ArrayList();
    private List<Integer> possibleLengthLocalOnly_ = new ArrayList();
    private String exampleNumber_ = "";

    public String a() {
        return this.nationalNumberPattern_;
    }

    public List<Integer> d() {
        return this.possibleLength_;
    }

    public List<Integer> f() {
        return this.possibleLengthLocalOnly_;
    }

    public l g(String str) {
        this.hasExampleNumber = true;
        this.exampleNumber_ = str;
        return this;
    }

    public l h(String str) {
        this.hasNationalNumberPattern = true;
        this.nationalNumberPattern_ = str;
        return this;
    }

    public int b(int i10) {
        return this.possibleLength_.get(i10).intValue();
    }

    public int c() {
        return this.possibleLength_.size();
    }

    public int e() {
        return this.possibleLengthLocalOnly_.size();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeBoolean(this.hasNationalNumberPattern);
        if (this.hasNationalNumberPattern) {
            objectOutput.writeUTF(this.nationalNumberPattern_);
        }
        int iC = c();
        objectOutput.writeInt(iC);
        for (int i10 = 0; i10 < iC; i10++) {
            objectOutput.writeInt(this.possibleLength_.get(i10).intValue());
        }
        int iE = e();
        objectOutput.writeInt(iE);
        for (int i11 = 0; i11 < iE; i11++) {
            objectOutput.writeInt(this.possibleLengthLocalOnly_.get(i11).intValue());
        }
        objectOutput.writeBoolean(this.hasExampleNumber);
        if (this.hasExampleNumber) {
            objectOutput.writeUTF(this.exampleNumber_);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        if (objectInput.readBoolean()) {
            h(objectInput.readUTF());
        }
        int i10 = objectInput.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            this.possibleLength_.add(Integer.valueOf(objectInput.readInt()));
        }
        int i12 = objectInput.readInt();
        for (int i13 = 0; i13 < i12; i13++) {
            this.possibleLengthLocalOnly_.add(Integer.valueOf(objectInput.readInt()));
        }
        if (objectInput.readBoolean()) {
            g(objectInput.readUTF());
        }
    }
}
