package com.narvii.monetization.sticker.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Community;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StickerCollectionSourceView extends FrameLayout {
    NVImageView authorIcon;
    View authorLayout;
    TextView authorName;
    ImageView meIcon;
    StickerHelper stickerHelper;

    public StickerCollectionSourceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.stickerHelper = new StickerHelper(Utils.getNVContext(getContext()));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.authorLayout = findViewById(R.id.source_layout);
        this.authorIcon = (NVImageView) findViewById(R.id.source_icon);
        this.meIcon = (ImageView) findViewById(R.id.me_icon);
        this.authorName = (TextView) findViewById(R.id.source_name);
    }

    public void setStickerCollection(StickerCollection stickerCollection) {
        ViewUtils.show(this.authorLayout, stickerCollection.isUserCreated());
        if (stickerCollection.isUserCreated()) {
            if (this.stickerHelper.isCreatedByMe(stickerCollection)) {
                this.meIcon.setVisibility(0);
                this.authorIcon.setVisibility(8);
                this.meIcon.setImageResource(R.drawable.ic_sticker_pack_me);
                this.authorName.setText(R.string.me);
                return;
            }
            this.meIcon.setVisibility(8);
            this.authorIcon.setVisibility(0);
            Community originalCommunity = stickerCollection.getOriginalCommunity();
            ViewUtils.show(this.authorLayout, originalCommunity != null);
            this.authorIcon.setImageUrl(originalCommunity == null ? null : originalCommunity.icon);
            this.authorName.setText(originalCommunity != null ? originalCommunity.name : null);
        }
    }
}
