package com.narvii.util.crawler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SourceContent {
    private boolean success = false;
    private String htmlCode = "";
    private String raw = "";
    private String title = "";
    private String description = "";
    private String url = "";
    private String finalUrl = "";
    private String cannonicalUrl = "";
    private String siteName = "";
    private String favicon = "";
    private HashMap<String, String> metaTags = new HashMap<>();
    private List<String> images = new ArrayList();
    private String[] urlData = new String[2];

    public String getCannonicalUrl() {
        return this.cannonicalUrl;
    }

    public String getDescription() {
        return this.description;
    }

    public String getFavicon() {
        return this.favicon;
    }

    public String getFinalUrl() {
        return this.finalUrl;
    }

    public String getHtmlCode() {
        return this.htmlCode;
    }

    public List<String> getImages() {
        return this.images;
    }

    public HashMap<String, String> getMetaTags() {
        return this.metaTags;
    }

    public String getRaw() {
        return this.raw;
    }

    public String getSiteName() {
        return this.siteName;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public String[] getUrlData() {
        return this.urlData;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCannonicalUrl(String str) {
        this.cannonicalUrl = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFavicon(String str) {
        this.favicon = str;
    }

    public void setFinalUrl(String str) {
        this.finalUrl = str;
    }

    public void setHtmlCode(String str) {
        this.htmlCode = str;
    }

    public void setImages(List<String> list) {
        this.images = list;
    }

    public void setMetaTags(HashMap<String, String> map) {
        this.metaTags = map;
    }

    public void setRaw(String str) {
        this.raw = str;
    }

    public void setSiteName(String str) {
        this.siteName = str;
    }

    public void setSuccess(boolean z6) {
        this.success = z6;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUrlData(String[] strArr) {
        this.urlData = strArr;
    }
}
