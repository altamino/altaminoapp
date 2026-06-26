.class public Lcom/narvii/master/explorer/CommunityCollection;
.super Lcom/narvii/model/NVObject;
.source "CommunityCollection.java"


# static fields
.field public static final COLLECTION_INLINE_DISPLAY_MODE_COVER_SLIDER:I = 0x3

.field public static final COLLECTION_INLINE_DISPLAY_MODE_NONE:I = 0x0

.field public static final COLLECTION_INLINE_DISPLAY_MODE_PACK_LIST:I = 0x2

.field public static final COLLECTION_INLINE_DISPLAY_MODE_SMALL_ICON_LIST:I = 0x1

.field public static final COLLECTION_PAGE_DISPLAY_MODE_COMMUNITY:I = 0x3

.field public static final COLLECTION_PAGE_DISPLAY_MODE_COMMUNITY_LIST:I = 0x2

.field public static final COLLECTION_PAGE_DISPLAY_MODE_NONE:I = 0x0

.field public static final COLLECTION_PAGE_DISPLAY_MODE_PAGE:I = 0x1


# instance fields
.field public childCommunityCollectionList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/explorer/CommunityCollection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;"
        }
    .end annotation
.end field

.field public collectionId:Ljava/lang/String;

.field public collectionType:I

.field public community:Lcom/narvii/model/Community;

.field public communityListPreview:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Community;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public coverImage:Ljava/lang/String;

.field public createdTime:Ljava/lang/String;

.field public inlineUI:Lcom/narvii/master/explorer/InlineUI;

.field public label:Ljava/lang/String;

.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public mediaMapping:Lcom/narvii/master/explorer/MediaMap;

.field public modifiedTime:Ljava/lang/String;

.field public pageUI:Lcom/narvii/master/explorer/PageUI;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/narvii/master/explorer/CommunityCollection;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
