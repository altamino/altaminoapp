package ha;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static final a DEFAULT_INSTANCE = new a("https://framatube.org", "FramaTube");
    private String name;
    private final String url;

    public a(String str) {
        this.url = str;
        this.name = "PeerTube";
    }

    public String a() {
        return this.url;
    }

    public a(String str, String str2) {
        this.url = str;
        this.name = str2;
    }
}
