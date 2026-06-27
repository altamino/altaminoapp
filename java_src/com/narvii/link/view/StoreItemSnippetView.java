package com.narvii.link.view;

import android.content.Context;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;

/* loaded from: classes.dex */
public class StoreItemSnippetView extends NVLinkSnippetView<StoreItemBaseObject> {
    NVImageView imageView;
    StoreItemNameView itemNameView;

    public StoreItemSnippetView(Context context) {
        super(context);
        FrameLayout.inflate(context, R.layout.item_snippet_store_item, this);
        this.imageView = (NVImageView) findViewById(R.id.store_item_preview);
        this.itemNameView = (StoreItemNameView) findViewById(R.id.item_name);
    }

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(StoreItemBaseObject storeItemBaseObject) {
        this.itemNameView.setStoreItem(storeItemBaseObject);
        this.imageView.setImageUrl(storeItemBaseObject.getStoreIcon());
        this.imageLoadTracker.addImageView(this.imageView);
    }
}
