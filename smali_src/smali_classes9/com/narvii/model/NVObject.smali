.class public abstract Lcom/narvii/model/NVObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/narvii/model/NVObjectComparable;


# static fields
.field public static final DISABLED_LEVEL_CURATOR:I = 0x1

.field public static final DISABLED_LEVEL_IMOD:I = 0x3

.field public static final DISABLED_LEVEL_LEADER:I = 0x2

.field public static final DISABLED_LEVEL_NONE:I = 0x0

.field public static final OBJECT_TYPE_AVATAR_FRAME:I = 0x7a

.field public static final OBJECT_TYPE_CAPTION_ANIMATION:I = 0x86

.field public static final OBJECT_TYPE_CAPTION_FONT:I = 0x85

.field public static final OBJECT_TYPE_CHAT_BUBBLE:I = 0x74

.field public static final OBJECT_TYPE_FEATURED_ITEM:I = 0x6

.field public static final OBJECT_TYPE_INTEREST_DATA:I = 0x7e

.field public static final OBJECT_TYPE_SEARCH_KEY_PREDICTION:I = 0x385

.field public static final OBJECT_TYPE_STICKER:I = 0x71

.field public static final OBJECT_TYPE_STICKER_COLLECTION:I = 0x72

.field public static final OBJECT_TYPE_STORY_TOPIC:I = 0x80

.field public static final PRODUCT_OWNERSHIP_STATUS_EXPIRED:I = 0x3

.field public static final PRODUCT_OWNERSHIP_STATUS_NONE:I = 0x0

.field public static final PRODUCT_OWNERSHIP_STATUS_OWNED:I = 0x1

.field public static final PRODUCT_OWNERSHIP_STATUS_PARTIALLY_OWNED:I = 0x2

.field public static final STATUS_CLOSED:I = 0x3

.field public static final STATUS_DELETED:I = 0xa

.field public static final STATUS_DISABLED:I = 0x9

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_PENDING:I = 0x5

.field public static final TYPE_ADS:I = 0xb

.field public static final TYPE_ANNOUNCEMENT:I = 0x83

.field public static final TYPE_BLOG:I = 0x1

.field public static final TYPE_BLOG_CATEGORY:I = 0x4

.field public static final TYPE_BLOG_CATEGORY_ITEM_TAG:I = 0x5

.field public static final TYPE_BOOKMARK:I = 0x14

.field public static final TYPE_COMMENT:I = 0x3

.field public static final TYPE_COMMUNITY:I = 0x10

.field public static final TYPE_COMMUNITY_COLLECTION:I = 0x11

.field public static final TYPE_COMMUNITY_INVITATION:I = 0x12

.field public static final TYPE_COMMUNITY_MEMBERSHIP_REQUEST:I = 0x13

.field public static final TYPE_COMMUNITY_REVIEW_REQUEST:I = 0x15

.field public static final TYPE_EXTERNAL_ORIGINAL_POST:I = 0x1d

.field public static final TYPE_ITEM:I = 0x2

.field public static final TYPE_ITEM_CATEGORY:I = 0xd

.field public static final TYPE_ITEM_CATEGORY_ITEM_TAG:I = 0xe

.field public static final TYPE_ITEM_SUBMISSION:I = 0xf

.field public static final TYPE_MESSAGE:I = 0x7

.field public static final TYPE_QUIZ_QUESTION:I = 0x17

.field public static final TYPE_SHARED_FILE:I = 0x6d

.field public static final TYPE_SHARED_FOLDER:I = 0x6a

.field public static final TYPE_THREAD:I = 0xc

.field public static final TYPE_USER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static apiTypeName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_a

    const/16 v0, 0x14

    if-eq p0, v0, :cond_9

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_8

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_7

    const/16 v0, 0x72

    if-eq p0, v0, :cond_6

    const/16 v0, 0x74

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x83

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "community/collection"

    return-object p0

    :pswitch_1
    const-string p0, "community"

    return-object p0

    :pswitch_2
    const-string p0, "item/submission"

    return-object p0

    :cond_0
    const-string p0, "item/category"

    return-object p0

    :cond_1
    const-string p0, "chat/thread"

    return-object p0

    :cond_2
    const-string p0, "announcement"

    return-object p0

    :cond_3
    const-string/jumbo p0, "topic"

    return-object p0

    :cond_4
    const-string p0, "avatar-frame"

    return-object p0

    :cond_5
    const-string p0, "chat/chat-bubble"

    return-object p0

    :cond_6
    const-string/jumbo p0, "sticker-collection"

    return-object p0

    :cond_7
    const-string/jumbo p0, "shared-folder/files"

    return-object p0

    :cond_8
    const-string/jumbo p0, "shared-folder/folders/"

    return-object p0

    :cond_9
    const-string p0, "bookmark"

    return-object p0

    :cond_a
    const-string p0, "chat/message"

    return-object p0

    :cond_b
    const-string p0, "blog/category"

    return-object p0

    :cond_c
    const-string p0, "comment"

    return-object p0

    :cond_d
    const-string p0, "item"

    return-object p0

    :cond_e
    const-string p0, "blog"

    return-object p0

    :cond_f
    const-string/jumbo p0, "user-profile"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final isAccessibleByUser(Lcom/narvii/model/User;Z)Z
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->status()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/narvii/model/User;->isLeader()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/narvii/model/NVObject;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_4

    return v3

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/narvii/model/NVObject;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_4

    return v3

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static objectTypeName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_a

    const/16 v0, 0x14

    if-eq p0, v0, :cond_9

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_8

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_7

    const/16 v0, 0x72

    if-eq p0, v0, :cond_6

    const/16 v0, 0x74

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x83

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "community-collection"

    return-object p0

    :pswitch_1
    const-string p0, "community"

    return-object p0

    :pswitch_2
    const-string p0, "item-submission"

    return-object p0

    :cond_0
    const-string p0, "item-category"

    return-object p0

    :cond_1
    const-string p0, "chat-thread"

    return-object p0

    :cond_2
    const-string p0, "announcement"

    return-object p0

    :cond_3
    const-string/jumbo p0, "topic"

    return-object p0

    :cond_4
    const-string p0, "avatar-frame"

    return-object p0

    :cond_5
    const-string p0, "chat-bubble"

    return-object p0

    :cond_6
    const-string/jumbo p0, "sticker-collection"

    return-object p0

    :cond_7
    const-string/jumbo p0, "shared-file"

    return-object p0

    :cond_8
    const-string/jumbo p0, "shared-folder"

    return-object p0

    :cond_9
    const-string p0, "bookmark"

    return-object p0

    :cond_a
    const-string p0, "chat-message"

    return-object p0

    :cond_b
    const-string p0, "blog-category"

    return-object p0

    :cond_c
    const-string p0, "comment"

    return-object p0

    :cond_d
    const-string p0, "item"

    return-object p0

    :cond_e
    const-string p0, "blog"

    return-object p0

    :cond_f
    const-string/jumbo p0, "user-profile"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public apiTypeName()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    invoke-static {v0}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/narvii/model/NVObject;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v0

    .line 16
    :goto_0
    return v0
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public invisibleBecauseOfClosed()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->status()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public invisibleBecauseOfDeleted()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->status()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    move v0, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    .line 15
    :goto_0
    instance-of v1, p0, Lcom/narvii/model/AuthorGetter;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    move-object v1, p0

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/AuthorGetter;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/narvii/model/AuthorGetter;->getAuthor()Lcom/narvii/model/User;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    :cond_1
    move v2, v3

    .line 36
    :cond_2
    return v2

    .line 37
    :cond_3
    return v0
.end method

.method public isAccessibleByLeader(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;Z)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUserItSelf(Lcom/narvii/model/User;)Z

    move-result v0

    .line 2
    instance-of v1, p0, Lcom/narvii/model/AuthorGetter;

    if-eqz v1, :cond_2

    .line 3
    move-object v1, p0

    check-cast v1, Lcom/narvii/model/AuthorGetter;

    invoke-interface {v1}, Lcom/narvii/model/AuthorGetter;->getAuthor()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_2
    return v0
.end method

.method public final isAccessibleByUserItSelf(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;Z)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public isDeleted()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->status()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->status()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isIdEquals(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public isiModeDisableForUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_1
    instance-of p1, p0, Lcom/narvii/model/ExtensionObject;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    move-object p1, p0

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/ExtensionObject;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/narvii/model/ExtensionObject;->getExtension()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v1, "__disabledLevel__"

    .line 32
    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 39
    move-result p1

    .line 40
    const/4 v1, 0x3

    .line 41
    .line 42
    if-ne p1, v1, :cond_2

    .line 43
    const/4 v0, 0x1

    .line 44
    :cond_2
    return v0
.end method

.method public abstract objectType()I
.end method

.method public objectTypeName()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    invoke-static {v0}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract parentId()Ljava/lang/String;
.end method

.method public abstract status()I
.end method

.method public abstract uid()Ljava/lang/String;
.end method
