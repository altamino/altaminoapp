package com.narvii.model;

import com.narvii.monetization.store.data.StoreSection;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes.dex */
public abstract class NVObject implements Cloneable, NVObjectComparable {
    public static final int DISABLED_LEVEL_CURATOR = 1;
    public static final int DISABLED_LEVEL_IMOD = 3;
    public static final int DISABLED_LEVEL_LEADER = 2;
    public static final int DISABLED_LEVEL_NONE = 0;
    public static final int OBJECT_TYPE_AVATAR_FRAME = 122;
    public static final int OBJECT_TYPE_CAPTION_ANIMATION = 134;
    public static final int OBJECT_TYPE_CAPTION_FONT = 133;
    public static final int OBJECT_TYPE_CHAT_BUBBLE = 116;
    public static final int OBJECT_TYPE_FEATURED_ITEM = 6;
    public static final int OBJECT_TYPE_INTEREST_DATA = 126;
    public static final int OBJECT_TYPE_SEARCH_KEY_PREDICTION = 901;
    public static final int OBJECT_TYPE_STICKER = 113;
    public static final int OBJECT_TYPE_STICKER_COLLECTION = 114;
    public static final int OBJECT_TYPE_STORY_TOPIC = 128;
    public static final int PRODUCT_OWNERSHIP_STATUS_EXPIRED = 3;
    public static final int PRODUCT_OWNERSHIP_STATUS_NONE = 0;
    public static final int PRODUCT_OWNERSHIP_STATUS_OWNED = 1;
    public static final int PRODUCT_OWNERSHIP_STATUS_PARTIALLY_OWNED = 2;
    public static final int STATUS_CLOSED = 3;
    public static final int STATUS_DELETED = 10;
    public static final int STATUS_DISABLED = 9;
    public static final int STATUS_OK = 0;
    public static final int STATUS_PENDING = 5;
    public static final int TYPE_ANNOUNCEMENT = 131;
    public static final int TYPE_BLOG = 1;
    public static final int TYPE_BLOG_CATEGORY = 4;
    public static final int TYPE_BLOG_CATEGORY_ITEM_TAG = 5;
    public static final int TYPE_BOOKMARK = 20;
    public static final int TYPE_COMMENT = 3;
    public static final int TYPE_COMMUNITY = 16;
    public static final int TYPE_COMMUNITY_COLLECTION = 17;
    public static final int TYPE_COMMUNITY_INVITATION = 18;
    public static final int TYPE_COMMUNITY_MEMBERSHIP_REQUEST = 19;
    public static final int TYPE_COMMUNITY_REVIEW_REQUEST = 21;
    public static final int TYPE_EXTERNAL_ORIGINAL_POST = 29;
    public static final int TYPE_ITEM = 2;
    public static final int TYPE_ITEM_CATEGORY = 13;
    public static final int TYPE_ITEM_CATEGORY_ITEM_TAG = 14;
    public static final int TYPE_ITEM_SUBMISSION = 15;
    public static final int TYPE_MESSAGE = 7;
    public static final int TYPE_QUIZ_QUESTION = 23;
    public static final int TYPE_SHARED_FILE = 109;
    public static final int TYPE_SHARED_FOLDER = 106;
    public static final int TYPE_THREAD = 12;
    public static final int TYPE_USER = 0;

    public static String apiTypeName(int i) {
        if (i == 0) {
            return "user-profile";
        }
        if (i == 1) {
            return "blog";
        }
        if (i == 2) {
            return "item";
        }
        if (i == 3) {
            return "comment";
        }
        if (i == 4) {
            return "blog/category";
        }
        if (i == 7) {
            return "chat/message";
        }
        if (i == 20) {
            return "bookmark";
        }
        if (i == 106) {
            return "shared-folder/folders/";
        }
        if (i == 109) {
            return "shared-folder/files";
        }
        if (i == 114) {
            return "sticker-collection";
        }
        if (i == 116) {
            return "chat/chat-bubble";
        }
        if (i == 122) {
            return StoreSection.GROUP_TYPE_AVATAR_FRAME;
        }
        if (i == 128) {
            return "topic";
        }
        if (i == 131) {
            return "announcement";
        }
        if (i == 12) {
            return "chat/thread";
        }
        if (i == 13) {
            return "item/category";
        }
        switch (i) {
            case 15:
                return "item/submission";
            case 16:
                return "community";
            case 17:
                return "community/collection";
            default:
                return null;
        }
    }

    public static String objectTypeName(int i) {
        if (i == 0) {
            return "user-profile";
        }
        if (i == 1) {
            return "blog";
        }
        if (i == 2) {
            return "item";
        }
        if (i == 3) {
            return "comment";
        }
        if (i == 4) {
            return "blog-category";
        }
        if (i == 7) {
            return NVImageView.TYPE_CHAT_MESSAGE;
        }
        if (i == 20) {
            return "bookmark";
        }
        if (i == 106) {
            return "shared-folder";
        }
        if (i == 109) {
            return "shared-file";
        }
        if (i == 114) {
            return "sticker-collection";
        }
        if (i == 116) {
            return StoreSection.GROUP_TYPE_CHAT_BUBBLE;
        }
        if (i == 122) {
            return StoreSection.GROUP_TYPE_AVATAR_FRAME;
        }
        if (i == 128) {
            return "topic";
        }
        if (i == 131) {
            return "announcement";
        }
        if (i == 12) {
            return "chat-thread";
        }
        if (i == 13) {
            return "item-category";
        }
        switch (i) {
            case 15:
                return "item-submission";
            case 16:
                return "community";
            case 17:
                return "community-collection";
            default:
                return null;
        }
    }

    public abstract String id();

    public abstract int objectType();

    public abstract String parentId();

    public abstract int status();

    public abstract String uid();

    public int hashCode() {
        String strId = id();
        return strId == null ? super.hashCode() : strId.hashCode();
    }

    public String objectTypeName() {
        return objectTypeName(objectType());
    }

    public String apiTypeName() {
        return apiTypeName(objectType());
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NVObject m46clone() {
        return (NVObject) JacksonUtils.readAs(JacksonUtils.writeAsString(this), getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isAccessibleByUser(User user) {
        boolean zIsAccessibleByUserItSelf = isAccessibleByUserItSelf(user);
        if (!(this instanceof AuthorGetter)) {
            return zIsAccessibleByUserItSelf;
        }
        User author = ((AuthorGetter) this).getAuthor();
        return zIsAccessibleByUserItSelf && (author == null || author.isAccessibleByUser(user));
    }

    private final boolean isAccessibleByUser(User user, boolean z) {
        int iStatus = status();
        if (iStatus != 9) {
            return iStatus != 10;
        }
        if (user == null) {
            return false;
        }
        if (z) {
            if (user.isLeader() && !isiModeDisableForUser(user)) {
                return true;
            }
        } else if (user.isCurator() && !isiModeDisableForUser(user)) {
            return true;
        }
        return Utils.isEqualsNotNull(uid(), user.uid);
    }

    public final boolean isAccessibleByUserItSelf(User user) {
        return isAccessibleByUser(user, false);
    }

    public boolean isAccessibleByLeader(User user) {
        return isAccessibleByUser(user, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean invisibleBecauseOfDeleted() {
        boolean z = status() == 10;
        if (!(this instanceof AuthorGetter)) {
            return z;
        }
        User author = ((AuthorGetter) this).getAuthor();
        if (z) {
            return true;
        }
        return author != null && author.invisibleBecauseOfDeleted();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isiModeDisableForUser(User user) {
        return !Utils.isEqualsNotNull(uid(), user == null ? null : user.uid) && (this instanceof ExtensionObject) && JacksonUtils.nodeInt(((ExtensionObject) this).getExtension(), "__disabledLevel__") == 3;
    }

    public boolean invisibleBecauseOfClosed() {
        return status() == 3;
    }

    public boolean isIdEquals(NVObject nVObject) {
        return Utils.isEqualsNotNull(nVObject == null ? null : nVObject.id(), id());
    }

    public boolean isDisabled() {
        return status() == 9;
    }

    public boolean isDeleted() {
        return status() == 10;
    }
}
