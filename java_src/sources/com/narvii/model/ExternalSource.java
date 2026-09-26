package com.narvii.model;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.lib.R;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
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
    public String id() {
        return this.sourceId;
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        return super.isAccessibleByUser(null);
    }

    public boolean isNotAvaileable() {
        int i10 = this.status;
        return i10 == 3 || i10 == 10 || i10 == 9;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return -1;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public String getFeedShowTitle(Context context) {
        int i10 = this.type;
        String str = "";
        if (i10 == 1) {
            str = "Youtube - ";
        } else if (i10 == 2) {
            str = "Reddit - ";
        }
        return str + this.title;
    }

    public Drawable getOriginDrawable(Context context) {
        int i10;
        int i11 = this.type;
        if (i11 == 1) {
            i10 = R.drawable.ic_feed_external_post_youtube;
        } else if (i11 != 2) {
            i10 = i11 != 100 ? 0 : R.drawable.ic_feed_external_post_rss;
        } else {
            i10 = R.drawable.ic_feed_external_post_reddit;
        }
        if (i10 != 0) {
            return ContextCompat.getDrawable(context, i10);
        }
        return null;
    }

    public String getUrlAlias() {
        return TextUtils.isEmpty(this.urlAlias) ? this.url : this.urlAlias;
    }
}
