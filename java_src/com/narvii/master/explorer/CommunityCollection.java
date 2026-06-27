package com.narvii.master.explorer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import java.util.List;

/* loaded from: classes3.dex */
public class CommunityCollection extends NVObject {
    public static final int COLLECTION_INLINE_DISPLAY_MODE_COVER_SLIDER = 3;
    public static final int COLLECTION_INLINE_DISPLAY_MODE_NONE = 0;
    public static final int COLLECTION_INLINE_DISPLAY_MODE_PACK_LIST = 2;
    public static final int COLLECTION_INLINE_DISPLAY_MODE_SMALL_ICON_LIST = 1;
    public static final int COLLECTION_PAGE_DISPLAY_MODE_COMMUNITY = 3;
    public static final int COLLECTION_PAGE_DISPLAY_MODE_COMMUNITY_LIST = 2;
    public static final int COLLECTION_PAGE_DISPLAY_MODE_NONE = 0;
    public static final int COLLECTION_PAGE_DISPLAY_MODE_PAGE = 1;

    @JsonDeserialize(contentAs = CommunityCollection.class)
    public List<CommunityCollection> childCommunityCollectionList;
    public String collectionId;
    public int collectionType;
    public Community community;

    @JsonDeserialize(contentAs = Community.class)
    public List<Community> communityListPreview;
    public String content;
    public String coverImage;
    public String createdTime;
    public InlineUI inlineUI;
    public String label;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public MediaMap mediaMapping;
    public String modifiedTime;
    public PageUI pageUI;
    public int status;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 17;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.collectionId;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }
}
