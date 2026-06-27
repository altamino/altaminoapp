package com.narvii.model;

/* loaded from: classes3.dex */
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

    public ExternalSourceOrigin(int i, String str, int i2, int i3, int i4) {
        this.type = i;
        this.iconResId = i2;
        this.smallIconId = i3;
        this.name = str;
        this.titleId = i4;
    }
}
