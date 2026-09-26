package y9;

import x9.e;

/* JADX INFO: loaded from: classes7.dex */
public class a extends e {
    private String description;
    private long streamCount;
    private long subscriberCount;
    private boolean verified;

    public void g(String str) {
        this.description = str;
    }

    public void h(long j6) {
        this.streamCount = j6;
    }

    public void i(long j6) {
        this.subscriberCount = j6;
    }

    public void j(boolean z6) {
        this.verified = z6;
    }

    public a(int i10, String str, String str2) {
        super(e.a.CHANNEL, i10, str, str2);
        this.subscriberCount = -1L;
        this.streamCount = -1L;
        this.verified = false;
    }
}
