package org.apache.http.entity.mime.content;

/* JADX INFO: loaded from: classes9.dex */
public abstract class AbstractContentBody implements ContentBody {
    private final String mediaType;
    private final String mimeType;
    private final String subType;

    @Override // org.apache.http.entity.mime.content.ContentDescriptor
    public String getMediaType() {
        return this.mediaType;
    }

    @Override // org.apache.http.entity.mime.content.ContentDescriptor
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // org.apache.http.entity.mime.content.ContentDescriptor
    public String getSubType() {
        return this.subType;
    }

    public AbstractContentBody(String str) {
        if (str != null) {
            this.mimeType = str;
            int iIndexOf = str.indexOf(47);
            if (iIndexOf != -1) {
                this.mediaType = str.substring(0, iIndexOf);
                this.subType = str.substring(iIndexOf + 1);
                return;
            } else {
                this.mediaType = str;
                this.subType = null;
                return;
            }
        }
        throw new IllegalArgumentException("MIME type may not be null");
    }
}
