package oa;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class j extends x9.e {
    private long duration;
    private String shortDescription;
    private boolean shortFormContent;
    private final o streamType;
    private String textualUploadDate;
    private org.schabi.newpipe.extractor.localization.e uploadDate;
    private List<x9.c> uploaderAvatars;
    private String uploaderName;
    private String uploaderUrl;
    private boolean uploaderVerified;
    private long viewCount;

    public boolean g() {
        return this.uploaderVerified;
    }

    public void h(long j6) {
        this.duration = j6;
    }

    public void i(String str) {
        this.shortDescription = str;
    }

    public void j(boolean z6) {
        this.shortFormContent = z6;
    }

    public void k(String str) {
        this.textualUploadDate = str;
    }

    public void l(org.schabi.newpipe.extractor.localization.e eVar) {
        this.uploadDate = eVar;
    }

    public void m(List<x9.c> list) {
        this.uploaderAvatars = list;
    }

    public void n(String str) {
        this.uploaderName = str;
    }

    public void o(String str) {
        this.uploaderUrl = str;
    }

    public void p(boolean z6) {
        this.uploaderVerified = z6;
    }

    public void q(long j6) {
        this.viewCount = j6;
    }

    public j(int i10, String str, String str2, o oVar) {
        super(x9.e.a.STREAM, i10, str, str2);
        this.viewCount = -1L;
        this.duration = -1L;
        this.uploaderUrl = null;
        this.uploaderAvatars = Collections.emptyList();
        this.uploaderVerified = false;
        this.shortFormContent = false;
        this.streamType = oVar;
    }

    @Override // x9.e
    public String toString() {
        return "StreamInfoItem{streamType=" + this.streamType + ", uploaderName='" + this.uploaderName + "', textualUploadDate='" + this.textualUploadDate + "', viewCount=" + this.viewCount + ", duration=" + this.duration + ", uploaderUrl='" + this.uploaderUrl + "', infoType=" + a() + ", serviceId=" + c() + ", url='" + e() + "', name='" + b() + "', thumbnails='" + d() + "', uploaderVerified='" + g() + "'}";
    }
}
