package com.narvii.blog.category;

import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.model.BlogCategory;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
class ChangeCategoryPost implements PostObject {
    private final ArrayList<BlogCategory> list;

    @Override // com.narvii.post.PostObject
    public String content() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        return false;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return null;
    }

    public ChangeCategoryPost(ArrayList<BlogCategory> arrayList) {
        this.list = arrayList;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ArrayNode arrayNodePutArray = objectNodeCreateObjectNode.putArray("taggedBlogCategoryIdList");
        Iterator<BlogCategory> it = this.list.iterator();
        while (it.hasNext()) {
            arrayNodePutArray.add(it.next().id());
        }
        return objectNodeCreateObjectNode;
    }
}
