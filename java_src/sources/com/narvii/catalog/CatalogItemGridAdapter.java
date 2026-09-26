package com.narvii.catalog;

import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.item.list.ItemGridExAdapter;
import com.narvii.model.Item;
import com.narvii.util.FilterHelper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CatalogItemGridAdapter extends ItemGridExAdapter {
    public boolean canSelectOfficial;

    public boolean keepForLeaderAndCurator() {
        return false;
    }

    @Override // com.narvii.item.list.ItemGridExAdapter, com.narvii.item.list.ItemGridAdapter
    protected int layoutId() {
        return this.showPin ? R.layout.grid_item_card_pin : R.layout.grid_item_card_vote_dark;
    }

    public CatalogItemGridAdapter(NVContext nVContext) {
        super(nVContext);
        this.canSelectOfficial = true;
        this.detailOpenSource = "Catalog";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.List<com.narvii.model.Item>] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // com.narvii.list.NVPagedAdapter
    protected List<Item> filterResponseList(List<Item> list, int i10) {
        ?? arrayList;
        if (keepForLeaderAndCurator()) {
            arrayList = new FilterHelper(this).keepForLeaderAndCurator().filter(list);
        } else {
            arrayList = super.filterResponseList(list, i10);
        }
        if (!this.canSelectOfficial && arrayList != 0) {
            arrayList = new ArrayList();
            for (Item item : list) {
                if (!item.author.isSystem()) {
                    arrayList.add(item);
                }
            }
        }
        return arrayList;
    }
}
