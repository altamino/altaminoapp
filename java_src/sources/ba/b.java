package ba;

/* JADX INFO: loaded from: classes7.dex */
public class b extends x9.e {
    private oa.e description;
    private a playlistType;
    private long streamCount;
    private String uploaderName;
    private String uploaderUrl;
    private boolean uploaderVerified;

    public void g(oa.e eVar) {
        this.description = eVar;
    }

    public void h(a aVar) {
        this.playlistType = aVar;
    }

    public void i(long j6) {
        this.streamCount = j6;
    }

    public void j(String str) {
        this.uploaderName = str;
    }

    public void k(String str) {
        this.uploaderUrl = str;
    }

    public void l(boolean z6) {
        this.uploaderVerified = z6;
    }

    public b(int i10, String str, String str2) {
        super(x9.e.a.PLAYLIST, i10, str, str2);
        this.streamCount = 0L;
    }
}
