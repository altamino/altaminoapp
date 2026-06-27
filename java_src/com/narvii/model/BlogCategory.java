package com.narvii.model;

/* loaded from: classes3.dex */
public class BlogCategory extends NVObject {
    public int blogsCount;
    public String categoryId;
    public String content;
    public String createdTime;
    public String icon;
    public String label;
    public String modifiedTime;
    public int position;
    public int status;
    public int style;
    public int type;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 4;
    }

    @Override // com.narvii.model.NVObject
    public String objectTypeName() {
        return "blog-category";
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
        return this.categoryId;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }
}
