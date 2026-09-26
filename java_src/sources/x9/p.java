package x9;

/* JADX INFO: loaded from: classes10.dex */
public final class p {
    private static z9.a downloader;
    private static org.schabi.newpipe.extractor.localization.a preferredContentCountry;
    private static org.schabi.newpipe.extractor.localization.i preferredLocalization;

    public static z9.a a() {
        return downloader;
    }

    public static void g(z9.a aVar, org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar2) {
        downloader = aVar;
        preferredLocalization = iVar;
        preferredContentCountry = aVar2;
    }

    public static org.schabi.newpipe.extractor.localization.a b() {
        org.schabi.newpipe.extractor.localization.a aVar = preferredContentCountry;
        return aVar == null ? org.schabi.newpipe.extractor.localization.a.DEFAULT : aVar;
    }

    public static org.schabi.newpipe.extractor.localization.i c() {
        org.schabi.newpipe.extractor.localization.i iVar = preferredLocalization;
        return iVar == null ? org.schabi.newpipe.extractor.localization.i.DEFAULT : iVar;
    }

    public static void e(z9.a aVar) {
        f(aVar, org.schabi.newpipe.extractor.localization.i.DEFAULT);
    }

    public static s d(String str) throws aa.d {
        for (s sVar : r.a()) {
            if (sVar.c(str) != s.a.NONE) {
                return sVar;
            }
        }
        throw new aa.d("No service can handle the url = \"" + str + "\"");
    }

    public static void f(z9.a aVar, org.schabi.newpipe.extractor.localization.i iVar) {
        org.schabi.newpipe.extractor.localization.a aVar2;
        if (iVar.d().isEmpty()) {
            aVar2 = org.schabi.newpipe.extractor.localization.a.DEFAULT;
        } else {
            aVar2 = new org.schabi.newpipe.extractor.localization.a(iVar.d());
        }
        g(aVar, iVar, aVar2);
    }
}
