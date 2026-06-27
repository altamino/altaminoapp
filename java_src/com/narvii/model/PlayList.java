package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class PlayList {
    public int currentItemIndex = -1;
    public int currentItemStatus;

    @JsonDeserialize(contentAs = PlayListItem.class)
    public List<PlayListItem> items;

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public PlayList m47clone() {
        PlayList playList = new PlayList();
        List<PlayListItem> list = this.items;
        if (list == null) {
            playList.items = new ArrayList();
        } else {
            playList.items = new ArrayList(list);
        }
        playList.currentItemIndex = this.currentItemIndex;
        playList.currentItemStatus = this.currentItemStatus;
        return playList;
    }

    public PlayListItem getCurrentPlayItem() {
        try {
            return this.items.get(this.currentItemIndex);
        } catch (Exception unused) {
            return null;
        }
    }

    public List<PlayListItem> itemList() {
        List<PlayListItem> list = this.items;
        return list == null ? new ArrayList() : list;
    }
}
