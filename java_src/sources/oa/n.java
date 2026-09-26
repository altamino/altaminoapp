package oa;

import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class n implements Serializable {
    private String channelName;
    private String previewUrl = null;
    private int startTimeSeconds;
    private String title;
    public String url;

    public void a(String str) {
        this.channelName = str;
    }

    public void b(String str) {
        this.previewUrl = str;
    }

    public void c(String str) {
        this.url = str;
    }

    public n(String str, int i10) {
        this.title = str;
        this.startTimeSeconds = i10;
    }
}
