package com.narvii.model;

/* JADX INFO: loaded from: classes8.dex */
public class ExternalSourceOrigin {
    public static final String EXTERNAL_SOURCE_ORIGIN_GENERAL = "generalRss";
    public static final String EXTERNAL_SOURCE_ORIGIN_REDDIT = "reddit";
    public static final String EXTERNAL_SOURCE_ORIGIN_YOUTUBE = "youtube";
    public static final int EXTERNAL_SOURCE_TYPE_ALL = -1;
    public static final int EXTERNAL_SOURCE_TYPE_GENERAL_RSS_FEED = 100;
    public static final int EXTERNAL_SOURCE_TYPE_NONE = 0;
    public static final int EXTERNAL_SOURCE_TYPE_REDDIT = 2;
    public static final int EXTERNAL_SOURCE_TYPE_YOUTUBE_CHANNEL = 1;
    public int iconResId;
    public String name;
    public int smallIconId;
    public int titleId;
    public int type;

    public ExternalSourceOrigin(int i10, String str, int i11, int i12, int i13) {
        this.type = i10;
        this.iconResId = i11;
        this.smallIconId = i12;
        this.name = str;
        this.titleId = i13;
    }
}
