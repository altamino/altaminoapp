package com.narvii.model;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.lib.R;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class ExternalSource extends NVObject {
    public static final String EXTERNAL_SOURCE_ALL_ID = "all";

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extensions;
    public String icon;
    public String innerRefCount;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastUpdatedTIme;
    public String outerRefCount;
    public int postsCount;
    public String primaryLanguage;
    public String sourceId;
    public int status;
    public List<String> tagList;
    public String title;
    public int type;
    public String url;
    public String urlAlias;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return -1;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.sourceId;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    public String getUrlAlias() {
        if (TextUtils.isEmpty(this.urlAlias)) {
            return this.url;
        }
        return this.urlAlias;
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        return super.isAccessibleByUser(null);
    }

    public Drawable getOriginDrawable(Context context) {
        int i;
        int i2 = this.type;
        if (i2 == 1) {
            i = R.drawable.ic_feed_external_post_youtube;
        } else if (i2 == 2) {
            i = R.drawable.ic_feed_external_post_reddit;
        } else {
            i = i2 != 100 ? 0 : R.drawable.ic_feed_external_post_rss;
        }
        if (i != 0) {
            return ContextCompat.getDrawable(context, i);
        }
        return null;
    }

    public String getFeedShowTitle(Context context) {
        int i = this.type;
        String str = "";
        if (i == 1) {
            str = "Youtube - ";
        } else if (i == 2) {
            str = "Reddit - ";
        }
        return str + this.title;
    }

    public boolean isNotAvaileable() {
        int i = this.status;
        return i == 3 || i == 10 || i == 9;
    }
}
