package com.narvii.feed;

import com.narvii.app.NVContext;
import com.narvii.blog.post.BlogPost;
import com.narvii.model.Media;
import com.narvii.model.Scene;
import com.narvii.post.PostObject;
import com.narvii.post.StoryUtils;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class StoryPostHelper extends BackgroundPostHelper {
    String coverImageUrl;
    boolean storyMediaGot;

    public StoryPostHelper(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.feed.BackgroundPostHelper, com.narvii.post.PostHelper
    protected String getPhotoUploadTarget(String str) {
        if (str == null) {
            return super.getPhotoUploadTarget(str);
        }
        PostObject postObject = this.post;
        if (postObject instanceof BlogPost) {
            if (!this.storyMediaGot) {
                this.storyMediaGot = true;
                Media storyCoverImageMedia = StoryUtils.getStoryCoverImageMedia(((BlogPost) postObject).extensions);
                if (storyCoverImageMedia != null) {
                    this.coverImageUrl = storyCoverImageMedia.url;
                }
            }
            if (Utils.isStringEquals(str, this.coverImageUrl)) {
                return NVImageView.TYPE_STORY_COVER;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Scene> it = ((BlogPost) this.post).sceneList.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().media.url);
            }
            if (arrayList.contains(str)) {
                return "story";
            }
        }
        return super.getPhotoUploadTarget(str);
    }
}
