package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class k implements Externalizable {
    private static final long serialVersionUID = 1;
    private List<j> metadata_ = new ArrayList();

    public List<j> b() {
        return this.metadata_;
    }

    public int a() {
        return this.metadata_.size();
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        int i10 = objectInput.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            j jVar = new j();
            jVar.readExternal(objectInput);
            this.metadata_.add(jVar);
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int iA = a();
        objectOutput.writeInt(iA);
        for (int i10 = 0; i10 < iA; i10++) {
            this.metadata_.get(i10).writeExternal(objectOutput);
        }
    }
}
