package androidx.window.core;

import e8.a;
import java.math.BigInteger;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes2.dex */
final class Version$bigInteger$2 extends v implements a<BigInteger> {
    final /* synthetic */ Version this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Version$bigInteger$2(Version version) {
        super(0);
        this.this$0 = version;
    }

    @Override // e8.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final BigInteger invoke() {
        return BigInteger.valueOf(this.this$0.d()).shiftLeft(32).or(BigInteger.valueOf(this.this$0.e())).shiftLeft(32).or(BigInteger.valueOf(this.this$0.f()));
    }
}
