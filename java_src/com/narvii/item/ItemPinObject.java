package com.narvii.item;

import com.narvii.model.NVObject;

/* loaded from: classes.dex */
public class ItemPinObject extends NVObject {
    public String id;
    public int inMyFavorites;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public ItemPinObject(String str, int i) {
        this.id = str;
        this.inMyFavorites = i;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }
}
