package com.narvii.catalog.activity;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.catalog.review.ItemSubmission;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class RecentActivityResponse extends ListResponse<Feed> {

    @JsonDeserialize(contentAs = Integer.class, keyAs = String.class)
    public Map<String, Integer> inMyFavoritesMapping;

    @JsonDeserialize(contentAs = ItemSubmission.class)
    public List<ItemSubmission> knowledgeBaseRequestList;

    @Override // com.narvii.model.api.ListResponse
    public List<Feed> list() {
        ArrayList arrayList = new ArrayList();
        List<ItemSubmission> list = this.knowledgeBaseRequestList;
        if (list != null) {
            for (ItemSubmission itemSubmission : list) {
                Item item = itemSubmission.originalItem;
                if (item != null) {
                    item.modifiedTime = itemSubmission.modifiedTime;
                    arrayList.add(item);
                }
            }
        }
        return arrayList;
    }

    public HashMap<String, User> authorMapping() {
        HashMap<String, User> map = new HashMap<>();
        List<ItemSubmission> list = this.knowledgeBaseRequestList;
        if (list != null) {
            for (ItemSubmission itemSubmission : list) {
                Item item = itemSubmission.originalItem;
                if (item != null) {
                    map.put(item.id(), itemSubmission.operator);
                }
            }
        }
        return map;
    }
}
