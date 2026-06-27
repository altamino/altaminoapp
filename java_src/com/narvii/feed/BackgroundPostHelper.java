package com.narvii.feed;

import com.narvii.app.NVContext;
import com.narvii.image.BackgroundSource;
import com.narvii.model.Media;
import com.narvii.post.PostHelper;
import com.narvii.post.PostObject;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class BackgroundPostHelper extends PostHelper {
    String backgroundUrl;
    boolean mediaGot;

    public BackgroundPostHelper(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.post.PostHelper
    protected String getPhotoUploadTarget(String str) {
        PostObject postObject = this.post;
        if (postObject instanceof BackgroundSource) {
            if (!this.mediaGot) {
                this.mediaGot = true;
                Media backgroundMedia = ((BackgroundSource) postObject).getBackgroundMedia();
                if (backgroundMedia != null) {
                    this.backgroundUrl = backgroundMedia.url;
                }
            }
            if (str != null && Utils.isStringEquals(str, this.backgroundUrl)) {
                return NVImageView.TYPE_POST_BACKGROUND;
            }
        }
        return super.getPhotoUploadTarget(str);
    }
}
