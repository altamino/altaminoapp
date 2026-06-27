package com.narvii.model;

import android.text.TextUtils;
import com.narvii.util.FeedBriefContent;
import com.narvii.util.StringUtils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class Item extends Feed implements FeedBriefContent {
    public String itemId;
    public String label;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 2;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.itemId;
    }

    @Override // com.narvii.model.Feed
    public String title() {
        return this.label;
    }

    @Override // com.narvii.model.Feed
    public String content() {
        return this.content;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.uid;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    public String firstKeyword() {
        if (TextUtils.isEmpty(this.keywords)) {
            return null;
        }
        ArrayList<String> arrayListSplit = StringUtils.split(this.keywords, ",");
        if (arrayListSplit.isEmpty()) {
            return null;
        }
        return arrayListSplit.get(0).trim();
    }

    @Override // com.narvii.util.FeedBriefContent
    public Feed getBriefContent() {
        Item item = new Item();
        item.ndcId = this.ndcId;
        User user = this.author;
        item.author = user == null ? null : (User) user.m46clone();
        item.itemId = this.itemId;
        return item;
    }
}
