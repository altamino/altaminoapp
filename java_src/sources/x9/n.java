package x9;

import java.io.Serializable;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class n implements Serializable {
    private oa.e content;
    private String title;
    private List<String> urlTexts;
    private List<URL> urls;

    public n(String str, oa.e eVar, List<URL> list, List<String> list2) {
        this.title = "";
        this.urls = new ArrayList();
        new ArrayList();
        this.title = str;
        this.content = eVar;
        this.urls = list;
        this.urlTexts = list2;
    }

    public void c(oa.e eVar) {
        this.content = eVar;
    }

    public void d(String str) {
        this.title = str;
    }

    public void a(URL url) {
        this.urls.add(url);
    }

    public void b(String str) {
        this.urlTexts.add(str);
    }

    public n() {
        this.title = "";
        this.urls = new ArrayList();
        this.urlTexts = new ArrayList();
    }
}
