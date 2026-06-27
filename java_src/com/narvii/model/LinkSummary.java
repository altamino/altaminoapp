package com.narvii.model;

import android.net.Uri;
import android.text.TextUtils;
import com.narvii.util.Utils;
import com.narvii.util.crawler.Regex;
import com.narvii.util.crawler.SourceContent;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class LinkSummary {
    public String body;
    public String deepLink;
    public String favicon;
    public String link;
    public List<Media> mediaList;
    public String source;
    public String title;

    public LinkSummary(SourceContent sourceContent) {
        if (sourceContent == null) {
            return;
        }
        this.link = sourceContent.getUrl();
        if (sourceContent.getImages() != null && sourceContent.getImages().size() > 0) {
            String str = sourceContent.getImages().get(0);
            Media media = new Media();
            if (!Utils.isGif(str) && str.startsWith("ytv")) {
                media.type = 103;
            } else {
                media.type = 100;
            }
            media.url = str;
            this.mediaList = new ArrayList();
            this.mediaList.add(media);
        }
        this.title = sourceContent.getTitle();
        this.body = sourceContent.getDescription();
        this.favicon = sourceContent.getFavicon();
        this.source = sourceContent.getSiteName();
    }

    public LinkSummary() {
    }

    public LinkSummary(String str, String str2, String str3, String str4, List<Media> list, String str5) {
        this.link = str;
        this.title = str2;
        this.body = str3;
        this.favicon = str4;
        this.mediaList = list;
        this.source = str5;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void setFavicon(String str) {
        this.favicon = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public String getLink() {
        return this.link;
    }

    public String getTitle() {
        return this.title;
    }

    public String getBody() {
        return this.body;
    }

    public String getFavicon() {
        return this.favicon;
    }

    public String getSource() {
        return this.source;
    }

    public String getShowSource() {
        if (!TextUtils.isEmpty(this.source)) {
            return this.source;
        }
        if (TextUtils.isEmpty(this.link)) {
            return null;
        }
        Uri uri = Uri.parse(this.link);
        if (!TextUtils.isEmpty(uri.getHost()) && uri.getHost().startsWith("www.")) {
            return uri.getHost().substring(4);
        }
        if (TextUtils.isEmpty(uri.getHost())) {
            return uri.toString();
        }
        return uri.getHost();
    }

    public List<Media> getMediaList() {
        return this.mediaList;
    }

    public Media getFirstMedia() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() < 1) {
            return null;
        }
        return this.mediaList.get(0);
    }

    public String getFirstMediaUrl() {
        if ((getFirstMedia() == null || TextUtils.isEmpty(getFirstMedia().url)) && getLink() != null && getLink().matches(Regex.IMAGE_PATTERN)) {
            return getLink();
        }
        if (getFirstMedia() == null) {
            return null;
        }
        return getFirstMedia().url;
    }

    public void setMediaList(List<Media> list) {
        this.mediaList = list;
    }

    public String getShowFavIcon() {
        if (!TextUtils.isEmpty(this.favicon)) {
            return this.favicon;
        }
        if (TextUtils.isEmpty(this.link)) {
            return null;
        }
        return "http://" + Uri.parse(this.link).getHost() + "/favicon.ico";
    }
}
