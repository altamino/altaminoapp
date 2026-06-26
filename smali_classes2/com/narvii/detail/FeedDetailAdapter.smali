.class public abstract Lcom/narvii/detail/FeedDetailAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "FeedDetailAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/Feed;",
        ">",
        "Lcom/narvii/detail/DetailAdapter<",
        "TT;",
        "Lcom/narvii/model/api/FeedResponse<",
        "+TT;>;>;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# static fields
.field public static final LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final LINKED_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field public static final SHARE:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field public isBookmarked:Z

.field tagClickListener:Lcom/narvii/util/text/OnTagClickListener;

.field public touchFeedContentEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v1, "detail.linked.header"

    const v2, 0x7f0f0375

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 60
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.linked"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 61
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.share"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "account"

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/detail/FeedDetailAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/detail/FeedDetailAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method protected addDivider(Ljava/util/List;)V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    if-eqz v2, :cond_2

    invoke-static {v1, v2}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    new-instance v1, Lcom/narvii/detail/DateDivider;

    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/narvii/detail/DateDivider;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_2
    :goto_0
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected allowAutoJoin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected blurMedia()Z
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 165
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Feed;

    iget-boolean v3, v3, Lcom/narvii/model/Feed;->needHidden:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090a30

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 148
    instance-of p3, p2, Lcom/narvii/widget/ShareMediaBar;

    if-eqz p3, :cond_0

    .line 149
    check-cast p2, Lcom/narvii/widget/ShareMediaBar;

    new-instance p3, Lcom/narvii/detail/FeedDetailAdapter$2;

    invoke-direct {p3, p0}, Lcom/narvii/detail/FeedDetailAdapter$2;-><init>(Lcom/narvii/detail/FeedDetailAdapter;)V

    invoke-virtual {p2, p3}, Lcom/narvii/widget/ShareMediaBar;->setShareMediaClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;)V

    :cond_0
    return-object p1
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 140
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    const v1, 0x7f090571

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-object p2
.end method

.method public createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
    .locals 7

    if-nez p6, :cond_0

    .line 176
    invoke-super/range {p0 .. p6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    iget-object p6, p0, Lcom/narvii/detail/FeedDetailAdapter;->tagClickListener:Lcom/narvii/util/text/OnTagClickListener;

    if-nez p6, :cond_1

    .line 179
    new-instance p6, Lcom/narvii/detail/FeedDetailAdapter$3;

    invoke-direct {p6, p0}, Lcom/narvii/detail/FeedDetailAdapter$3;-><init>(Lcom/narvii/detail/FeedDetailAdapter;)V

    iput-object p6, p0, Lcom/narvii/detail/FeedDetailAdapter;->tagClickListener:Lcom/narvii/util/text/OnTagClickListener;

    .line 195
    :cond_1
    iget-object v6, p0, Lcom/narvii/detail/FeedDetailAdapter;->tagClickListener:Lcom/narvii/util/text/OnTagClickListener;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 103
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b014a

    .line 104
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090818

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/item/list/ItemGallery;

    .line 108
    new-instance p3, Lcom/narvii/util/FilterHelper;

    invoke-direct {p3, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->taggedObjects()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/item/list/ItemGallery;->setItems(Ljava/util/List;)V

    .line 109
    new-instance p3, Lcom/narvii/detail/FeedDetailAdapter$1;

    invoke-direct {p3, p0}, Lcom/narvii/detail/FeedDetailAdapter$1;-><init>(Lcom/narvii/detail/FeedDetailAdapter;)V

    invoke-virtual {p2, p3}, Lcom/narvii/item/list/ItemGallery;->setOnItemClickListener(Lcom/narvii/item/list/ItemGallery$OnItemClickListener;)V

    return-object p1

    .line 119
    :cond_0
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_2

    const p1, 0x7f0b015b

    .line 120
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090a2e

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090a38

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090a25

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090a33

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_1

    const p3, 0x7f080772

    goto :goto_0

    :cond_1
    const p3, 0x7f080771

    :goto_0
    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1

    .line 134
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 97
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getResponse()Lcom/narvii/model/api/FeedResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/model/api/FeedResponse<",
            "TT;>;"
        }
    .end annotation

    .line 77
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/FeedResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/narvii/model/api/ObjectResponse;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    return-object v0
.end method

.method protected notJoined()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 222
    instance-of v0, p3, Lcom/narvii/model/Media;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 224
    :cond_0
    iget-object v3, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    :goto_0
    if-eqz v3, :cond_4

    .line 226
    invoke-interface {v3, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-eqz p3, :cond_2

    .line 227
    check-cast p3, Lcom/narvii/model/Media;

    invoke-virtual {p3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->preview()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    invoke-static {p3, v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 231
    :cond_1
    const-class p1, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p3, v0, p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 234
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "parent"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-class p2, Lcom/narvii/model/Feed;

    const-string p3, "parentClass"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->preview()Z

    move-result p2

    const-string p3, "preview"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "list"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "position"

    .line 240
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of p3, p2, Lcom/narvii/app/NVFragment;

    if-eqz p3, :cond_3

    .line 242
    check-cast p2, Lcom/narvii/app/NVFragment;

    const-string p3, "isAnnouncement"

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "forceUHQ"

    .line 243
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v1

    .line 250
    :cond_4
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_c

    .line 251
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p2, "Post Detail Share Bar"

    .line 252
    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    if-nez p5, :cond_5

    goto/16 :goto_3

    .line 254
    :cond_5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f090a2e

    if-ne p3, p4, :cond_6

    .line 255
    sget-object p2, Lcom/narvii/logging/ActSemantic;->email:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 256
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    new-instance p3, Lcom/narvii/share/elements/EmailElement;

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, p4}, Lcom/narvii/share/elements/EmailElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, p2, p3}, Lcom/narvii/share/ShareViewHelper;->shareFeed(Lcom/narvii/model/NVObject;Lcom/narvii/share/elements/BaseElement;)V

    goto/16 :goto_3

    .line 257
    :cond_6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f090a38

    if-ne p3, p4, :cond_7

    .line 258
    sget-object p2, Lcom/narvii/logging/ActSemantic;->sendMessage:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 259
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    new-instance p3, Lcom/narvii/share/elements/MessageElement;

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, p4}, Lcom/narvii/share/elements/MessageElement;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, p2, p3}, Lcom/narvii/share/ShareViewHelper;->shareFeed(Lcom/narvii/model/NVObject;Lcom/narvii/share/elements/BaseElement;)V

    goto/16 :goto_3

    .line 260
    :cond_7
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f090a25

    if-ne p3, p4, :cond_8

    .line 261
    sget-object p2, Lcom/narvii/logging/ActSemantic;->copyLink:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 262
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto :goto_3

    .line 263
    :cond_8
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f090a33

    if-ne p1, p3, :cond_b

    .line 264
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->notJoined()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of p3, p1, Lcom/narvii/app/NVFragment;

    if-eqz p3, :cond_9

    .line 265
    move-object p2, p1

    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 266
    new-instance p3, Landroid/widget/PopupMenu;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1, p5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 267
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 268
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 269
    new-instance p1, Lcom/narvii/detail/FeedDetailAdapter$4;

    invoke-direct {p1, p0, p2}, Lcom/narvii/detail/FeedDetailAdapter$4;-><init>(Lcom/narvii/detail/FeedDetailAdapter;Lcom/narvii/app/NVFragment;)V

    invoke-virtual {p3, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 276
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->show()V

    goto :goto_3

    .line 278
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    .line 279
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->notJoined()Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_2

    :cond_a
    new-instance v2, Lcom/narvii/detail/FeedDetailAdapter$5;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, p0, p3, p1}, Lcom/narvii/detail/FeedDetailAdapter$5;-><init>(Lcom/narvii/detail/FeedDetailAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 285
    :goto_2
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {p3, p1, v2}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_b
    :goto_3
    return v1

    .line 290
    :cond_c
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 301
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_2

    .line 302
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->response:Lcom/narvii/model/api/ApiResponse;

    instance-of v1, v0, Lcom/narvii/model/api/FeedResponse;

    if-eqz v1, :cond_1

    .line 306
    check-cast v0, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailAdapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 308
    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    .line 309
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setObject(Lcom/narvii/model/NVObject;)V

    .line 310
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 313
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected preview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract responseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/FeedResponse<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public setResponse(Lcom/narvii/model/api/FeedResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/api/FeedResponse<",
            "+TT;>;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method protected shouldBlockShareMedia()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public taggedObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/api/FeedResponse;->taggedObjects:Ljava/util/List;

    :goto_0
    return-object v0
.end method
