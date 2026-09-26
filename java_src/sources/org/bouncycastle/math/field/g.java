package org.bouncycastle.math.field;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
class g implements a {
    protected final BigInteger characteristic;

    g(BigInteger bigInteger) {
        this.characteristic = bigInteger;
    }

    @Override // org.bouncycastle.math.field.a
    public int a() {
        return 1;
    }

    @Override // org.bouncycastle.math.field.a
    public BigInteger b() {
        return this.characteristic;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            return this.characteristic.equals(((g) obj).characteristic);
        }
        return false;
    }

    public int hashCode() {
        return this.characteristic.hashCode();
    }
}
