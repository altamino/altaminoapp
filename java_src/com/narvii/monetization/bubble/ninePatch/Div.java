package com.narvii.monetization.bubble.ninePatch;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes3.dex */
public class Div implements Externalizable {
    public int start;
    public int stop;

    public Div() {
    }

    public Div(int i, int i2) {
        this.start = i;
        this.stop = i2;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.write(this.start);
        objectOutput.write(this.stop);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.start = objectInput.readInt();
        this.stop = objectInput.readInt();
    }
}
