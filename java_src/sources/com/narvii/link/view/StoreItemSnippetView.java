package com.narvii.link.view;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public class StoreItemSnippetView extends NVLinkSnippetView<StoreItemBaseObject> {
    NVImageView imageView;
    StoreItemNameView itemNameView;

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(StoreItemBaseObject storeItemBaseObject) {
        this.itemNameView.setStoreItem(storeItemBaseObject);
        this.imageView.setImageUrl(storeItemBaseObject.getStoreIcon());
        this.imageLoadTracker.addImageView(this.imageView);
    }

    public StoreItemSnippetView(@NonNull Context context) {
        super(context);
        View.inflate(context, R.layout.item_snippet_store_item, this);
        this.imageView = (NVImageView) findViewById(R.id.store_item_preview);
        this.itemNameView = (StoreItemNameView) findViewById(R.id.item_name);
    }
}
