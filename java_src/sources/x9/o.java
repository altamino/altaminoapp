package x9;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class o extends h<e, f> {
    private final ba.e playlistCollector;
    private final oa.m streamCollector;
    private final y9.c userCollector;

    @Override // x9.h
    public List<Throwable> e() {
        ArrayList arrayList = new ArrayList(super.e());
        arrayList.addAll(this.streamCollector.e());
        arrayList.addAll(this.userCollector.e());
        arrayList.addAll(this.playlistCollector.e());
        return Collections.unmodifiableList(arrayList);
    }

    @Override // x9.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public e a(f fVar) throws aa.h {
        if (fVar instanceof oa.l) {
            return this.streamCollector.a((oa.l) fVar);
        }
        if (fVar instanceof y9.b) {
            return this.userCollector.a((y9.b) fVar);
        }
        if (fVar instanceof ba.d) {
            return this.playlistCollector.a((ba.d) fVar);
        }
        throw new IllegalArgumentException("Invalid extractor type: " + fVar);
    }

    public o(int i10) {
        super(i10);
        this.streamCollector = new oa.m(i10);
        this.userCollector = new y9.c(i10);
        this.playlistCollector = new ba.e(i10);
    }
}
