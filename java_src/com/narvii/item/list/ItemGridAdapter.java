package com.narvii.item.list;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.Item;
import com.narvii.model.api.ItemListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.widget.CardView;

/* loaded from: classes.dex */
public abstract class ItemGridAdapter extends NVPagedAdapter<Item, ItemListResponse> implements NotificationListener {
    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected int layoutId() {
        return R.layout.grid_item_card;
    }

    public ItemGridAdapter(NVContext nVContext) {
        super(nVContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<Item> dataType() {
        return Item.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<ItemListResponse> responseType() {
        return ItemListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(layoutId(), viewGroup, view);
        ((CardView) viewCreateView.findViewById(R.id.item_card)).setItem((Item) obj);
        return viewCreateView;
    }

    public void onNotification(Notification notification) {
        if (notification.obj instanceof Item) {
            String str = notification.action;
            if (str == "edit" || str == "update" || str == "delete") {
                editList(notification, false);
            }
        }
    }
}
