package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Item;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class SubCategoryChildWrapper {

    @JsonDeserialize(contentAs = Integer.class, keyAs = String.class)
    public HashMap<String, Integer> inMyFavoritesMapping;

    @JsonDeserialize(contentAs = Item.class)
    public List<Item> itemList;
    public String type;
}
