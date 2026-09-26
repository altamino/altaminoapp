.class public abstract Lcom/narvii/detail/FeedDetailAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/Feed;",
        ">",
        "Lcom/narvii/detail/DetailAdapter<",
        "TT;",
        "Lcom/narvii/model/api/FeedResponse<",
        "+TT;>;>;"
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 3
    .line 4
    const-string v1, "detail.linked.header"

    .line 5
    .line 6
    .line 7
    const v2, 0x7f1203cd

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    sput-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 15
    .line 16
    const-string v1, "detail.linked"

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    sput-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 24
    .line 25
    const-string v1, "detail.share"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/detail/FeedDetailAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/detail/FeedDetailAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected addDivider(Ljava/util/List;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    new-instance v1, Lcom/narvii/detail/DateDivider;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, v0}, Lcom/narvii/detail/DateDivider;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    :goto_0
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/model/Feed;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    move v0, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v1

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/model/Feed;

    .line 50
    .line 51
    iget-boolean v3, v3, Lcom/narvii/model/Feed;->needHidden:Z

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    move v1, v2

    .line 57
    :cond_2
    return v1
.end method

.method public createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0cf7

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 5
    instance-of p3, p2, Lcom/narvii/widget/ShareMediaBar;

    if-eqz p3, :cond_0

    .line 6
    check-cast p2, Lcom/narvii/widget/ShareMediaBar;

    new-instance p3, Lcom/narvii/detail/FeedDetailAdapter$2;

    invoke-direct {p3, p0}, Lcom/narvii/detail/FeedDetailAdapter$2;-><init>(Lcom/narvii/detail/FeedDetailAdapter;)V

    invoke-virtual {p2, p3}, Lcom/narvii/widget/ShareMediaBar;->setShareMediaClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;)V

    :cond_0
    return-object p1
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a06eb

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-object p2
.end method

.method public createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    if-nez p6, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    iget-object p6, p0, Lcom/narvii/detail/FeedDetailAdapter;->tagClickListener:Lcom/narvii/util/text/OnTagClickListener;

    .line 10
    .line 11
    if-nez p6, :cond_1

    .line 12
    .line 13
    new-instance p6, Lcom/narvii/detail/FeedDetailAdapter$3;

    .line 14
    .line 15
    .line 16
    invoke-direct {p6, p0}, Lcom/narvii/detail/FeedDetailAdapter$3;-><init>(Lcom/narvii/detail/FeedDetailAdapter;)V

    .line 17
    .line 18
    iput-object p6, p0, Lcom/narvii/detail/FeedDetailAdapter;->tagClickListener:Lcom/narvii/util/text/OnTagClickListener;

    .line 19
    .line 20
    :cond_1
    iget-object v6, p0, Lcom/narvii/detail/FeedDetailAdapter;->tagClickListener:Lcom/narvii/util/text/OnTagClickListener;

    .line 21
    move-object v0, p0

    .line 22
    move-object v1, p1

    .line 23
    move v2, p2

    .line 24
    move-object v3, p3

    .line 25
    move-object v4, p4

    .line 26
    move v5, p5

    .line 27
    .line 28
    .line 29
    invoke-super/range {v0 .. v6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d0169

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0ac1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/item/list/ItemGallery;

    .line 21
    .line 22
    new-instance p3, Lcom/narvii/util/FilterHelper;

    .line 23
    .line 24
    .line 25
    invoke-direct {p3, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->taggedObjects()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Lcom/narvii/item/list/ItemGallery;->setItems(Ljava/util/List;)V

    .line 37
    .line 38
    new-instance p3, Lcom/narvii/detail/FeedDetailAdapter$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, p0}, Lcom/narvii/detail/FeedDetailAdapter$1;-><init>(Lcom/narvii/detail/FeedDetailAdapter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Lcom/narvii/item/list/ItemGallery;->setOnItemClickListener(Lcom/narvii/item/list/ItemGallery$OnItemClickListener;)V

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 48
    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0d017a

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    const p2, 0x7f0a0cf6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    const p2, 0x7f0a0cff

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    const p2, 0x7f0a0ced

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    const p2, 0x7f0a0cfa

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 111
    .line 112
    if-eqz p3, :cond_1

    .line 113
    .line 114
    .line 115
    const p3, 0x7f08096f

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_1
    const p3, 0x7f08096e

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-object p1

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 131
    move-result-object p1

    .line 132
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
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

    .line 2
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/FeedResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/narvii/model/api/ObjectResponse;
    .locals 1

    .line 1
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

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Media;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/Feed;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    move-object v3, v2

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v3, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    :goto_0
    if-eqz v3, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 24
    move-result v4

    .line 25
    const/4 v5, -0x1

    .line 26
    .line 27
    if-eq v4, v5, :cond_4

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    check-cast p3, Lcom/narvii/model/Media;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/narvii/model/Media;->isVideo()Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->preview()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-static {p3, v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    const-class p1, Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {p3, v0, p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    const-class p3, Lcom/narvii/media/MediaGalleryOptionActivity;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .line 74
    const-string p2, "parent"

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object p3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    const-string p2, "parentClass"

    .line 84
    .line 85
    const-class p3, Lcom/narvii/model/Feed;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    .line 90
    const-string p2, "preview"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->preview()Z

    .line 94
    move-result p3

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    .line 99
    const-string p2, "list"

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object p3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    const-string p2, "position"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    .line 113
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 114
    .line 115
    instance-of p3, p2, Lcom/narvii/app/NVFragment;

    .line 116
    .line 117
    if-eqz p3, :cond_3

    .line 118
    .line 119
    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 120
    .line 121
    const-string p3, "isAnnouncement"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 125
    move-result p2

    .line 126
    .line 127
    const-string p3, "forceUHQ"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-static {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 134
    :goto_1
    return v1

    .line 135
    .line 136
    :cond_4
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 137
    .line 138
    if-ne p3, v0, :cond_c

    .line 139
    .line 140
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    .line 141
    .line 142
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 146
    .line 147
    const-string p2, "Post Detail Share Bar"

    .line 148
    .line 149
    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 150
    .line 151
    if-nez p5, :cond_5

    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 157
    move-result p3

    .line 158
    .line 159
    .line 160
    const p4, 0x7f0a0cf6

    .line 161
    .line 162
    if-ne p3, p4, :cond_6

    .line 163
    .line 164
    sget-object p2, Lcom/narvii/logging/ActSemantic;->email:Lcom/narvii/logging/ActSemantic;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    new-instance p3, Lcom/narvii/share/elements/EmailElement;

    .line 174
    .line 175
    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 176
    .line 177
    .line 178
    invoke-direct {p3, p4}, Lcom/narvii/share/elements/EmailElement;-><init>(Lcom/narvii/app/NVContext;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2, p3}, Lcom/narvii/share/ShareViewHelper;->shareFeed(Lcom/narvii/model/NVObject;Lcom/narvii/share/elements/BaseElement;)V

    .line 182
    .line 183
    goto/16 :goto_3

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 187
    move-result p3

    .line 188
    .line 189
    .line 190
    const p4, 0x7f0a0cff

    .line 191
    .line 192
    if-ne p3, p4, :cond_7

    .line 193
    .line 194
    sget-object p2, Lcom/narvii/logging/ActSemantic;->sendMessage:Lcom/narvii/logging/ActSemantic;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 201
    move-result-object p2

    .line 202
    .line 203
    new-instance p3, Lcom/narvii/share/elements/MessageElement;

    .line 204
    .line 205
    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 206
    .line 207
    .line 208
    invoke-direct {p3, p4}, Lcom/narvii/share/elements/MessageElement;-><init>(Lcom/narvii/app/NVContext;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2, p3}, Lcom/narvii/share/ShareViewHelper;->shareFeed(Lcom/narvii/model/NVObject;Lcom/narvii/share/elements/BaseElement;)V

    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    .line 216
    :cond_7
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 217
    move-result p3

    .line 218
    .line 219
    .line 220
    const p4, 0x7f0a0ced

    .line 221
    .line 222
    if-ne p3, p4, :cond_8

    .line 223
    .line 224
    sget-object p2, Lcom/narvii/logging/ActSemantic;->copyLink:Lcom/narvii/logging/ActSemantic;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 231
    move-result-object p2

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    .line 235
    goto :goto_3

    .line 236
    .line 237
    .line 238
    :cond_8
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 239
    move-result p1

    .line 240
    .line 241
    .line 242
    const p3, 0x7f0a0cfa

    .line 243
    .line 244
    if-ne p1, p3, :cond_b

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->notJoined()Z

    .line 248
    move-result p1

    .line 249
    .line 250
    if-nez p1, :cond_9

    .line 251
    .line 252
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 253
    .line 254
    instance-of p3, p1, Lcom/narvii/app/NVFragment;

    .line 255
    .line 256
    if-eqz p3, :cond_9

    .line 257
    .line 258
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 259
    .line 260
    new-instance p2, Landroid/widget/PopupMenu;

    .line 261
    .line 262
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 263
    .line 264
    .line 265
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 266
    move-result-object p3

    .line 267
    .line 268
    .line 269
    invoke-direct {p2, p3, p5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 273
    move-result-object p3

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 277
    move-result-object p4

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, p3, p4}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 284
    move-result-object p3

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 288
    .line 289
    new-instance p3, Lcom/narvii/detail/FeedDetailAdapter$4;

    .line 290
    .line 291
    .line 292
    invoke-direct {p3, p0, p1}, Lcom/narvii/detail/FeedDetailAdapter$4;-><init>(Lcom/narvii/detail/FeedDetailAdapter;Lcom/narvii/app/NVFragment;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2, p3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/widget/PopupMenu;->show()V

    .line 299
    goto :goto_3

    .line 300
    .line 301
    .line 302
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 303
    move-result-object p1

    .line 304
    .line 305
    check-cast p1, Lcom/narvii/model/Feed;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->notJoined()Z

    .line 309
    move-result p3

    .line 310
    .line 311
    if-eqz p3, :cond_a

    .line 312
    goto :goto_2

    .line 313
    .line 314
    :cond_a
    new-instance v2, Lcom/narvii/detail/FeedDetailAdapter$5;

    .line 315
    .line 316
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 317
    .line 318
    .line 319
    invoke-direct {v2, p0, p3, p1}, Lcom/narvii/detail/FeedDetailAdapter$5;-><init>(Lcom/narvii/detail/FeedDetailAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 320
    .line 321
    :goto_2
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 322
    .line 323
    .line 324
    invoke-static {p3, p1, v2}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 329
    move-result-object p1

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 333
    :cond_b
    :goto_3
    return v1

    .line 334
    .line 335
    .line 336
    :cond_c
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 337
    move-result p1

    .line 338
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    instance-of v2, v2, Lcom/narvii/model/Feed;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "delete"

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->response:Lcom/narvii/model/api/ApiResponse;

    .line 38
    .line 39
    instance-of v1, v0, Lcom/narvii/model/api/FeedResponse;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/model/api/FeedResponse;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailAdapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/model/Feed;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/model/Feed;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setObject(Lcom/narvii/model/NVObject;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 69
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

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/api/FeedResponse;->taggedObjects:Ljava/util/List;

    .line 11
    :goto_0
    return-object v0
.end method
