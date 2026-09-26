package x9;

import java.util.List;
import org.schabi.newpipe.extractor.services.youtube.s0;

/* JADX INFO: loaded from: classes10.dex */
public final class r {
    public static final ca.a Bandcamp;
    public static final fa.a MediaCCC;
    public static final ha.g PeerTube;
    private static final List<s> SERVICES;
    public static final ja.j SoundCloud;
    public static final s0 YouTube;

    public static List<s> a() {
        return SERVICES;
    }

    static {
        s0 s0Var = new s0(0);
        YouTube = s0Var;
        ja.j jVar = new ja.j(1);
        SoundCloud = jVar;
        fa.a aVar = new fa.a(2);
        MediaCCC = aVar;
        ha.g gVar = new ha.g(3);
        PeerTube = gVar;
        ca.a aVar2 = new ca.a(4);
        Bandcamp = aVar2;
        SERVICES = net.pubnative.lite.sdk.vpaid.h.a(new Object[]{s0Var, jVar, aVar, gVar, aVar2});
    }
}
