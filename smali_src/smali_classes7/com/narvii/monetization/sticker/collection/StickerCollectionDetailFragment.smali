.class public Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;,
        Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;
    }
.end annotation


# static fields
.field static final DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field public adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

.field header:Lcom/narvii/list/overlay/OverlayLayout;

.field public padding:I

.field private placeHolderHeight:I

.field previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

.field requestFinished:Z

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field public stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

.field storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.sticker_collection.header"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    const-string v1, "detail.sticker_collection"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static intent(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/content/Intent;
    .locals 4

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    const-string v1, "id"

    .line 11
    .line 12
    const-string v2, "prefetch"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-class v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-object v0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-class p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    .line 50
    :cond_2
    const-class v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method private updateHeader()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 35
    .line 36
    .line 37
    const v2, 0x7f0d06fd

    .line 38
    .line 39
    iget v3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 45
    .line 46
    .line 47
    const v2, 0x7f0a042d

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/monetization/sticker/collection/HeaderLayout;

    .line 54
    .line 55
    iget v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setHeight1(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 62
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->updateHeader()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 10

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)V

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0d0365

    .line 24
    .line 25
    .line 26
    filled-new-array {v2}, [I

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    const/high16 v2, 0x41000000    # 8.0f

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 43
    move-result v1

    .line 44
    float-to-int v1, v1

    .line 45
    .line 46
    iput v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->padding:I

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 49
    .line 50
    iget v8, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->padding:I

    .line 51
    move-object v3, v1

    .line 52
    move-object v4, p0

    .line 53
    move v5, v8

    .line 54
    move v6, v8

    .line 55
    move v7, v8

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v3 .. v8}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 59
    .line 60
    new-instance v3, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    .line 61
    .line 62
    const-class v4, Lcom/narvii/model/Sticker;

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, p0, p0, v4}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 66
    .line 67
    iput-object v3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    .line 68
    const/4 v4, 0x4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3, v4}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 72
    const/4 v3, 0x1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    .line 80
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    const/4 v3, 0x0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    .line 97
    new-instance v1, Lcom/narvii/monetization/common/RecommendHeaderAdapter;

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 101
    .line 102
    new-instance v9, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;

    .line 103
    .line 104
    const-string v6, "sticker"

    .line 105
    .line 106
    const/16 v7, 0x72

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 110
    move-result-object v8

    .line 111
    move-object v3, v9

    .line 112
    move-object v4, p0

    .line 113
    move-object v5, p0

    .line 114
    .line 115
    .line 116
    invoke-direct/range {v3 .. v8}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v9}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 130
    move-result v1

    .line 131
    float-to-int v7, v1

    .line 132
    .line 133
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 134
    move-object v2, v1

    .line 135
    move-object v3, p0

    .line 136
    move v4, v7

    .line 137
    move v5, v7

    .line 138
    move v6, v7

    .line 139
    .line 140
    .line 141
    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 142
    const/4 v2, 0x3

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v9, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    .line 150
    if-nez p1, :cond_0

    .line 151
    .line 152
    const-string p1, "response"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    const-class v1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 165
    .line 166
    if-eqz p1, :cond_0

    .line 167
    .line 168
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    .line 172
    :cond_0
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "StoreStickerDetailPage"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    mul-int/lit16 v0, v0, 0x12c

    .line 14
    int-to-float v0, v0

    .line 15
    .line 16
    .line 17
    const v1, 0x443b8000    # 750.0f

    .line 18
    div-float/2addr v0, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0704e2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v1

    .line 34
    .line 35
    div-int/lit8 v1, v1, 0x2

    .line 36
    int-to-float v1, v1

    .line 37
    add-float/2addr v0, v1

    .line 38
    float-to-int v0, v0

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const-string v0, "requestFinished"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 55
    move-result p1

    .line 56
    .line 57
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->requestFinished:Z

    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    const/4 p1, 0x1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f1210ad

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04b6

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210ad

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    return v0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 34
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "requestFinished"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->requestFinished:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ab1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->updateHeader()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 40
    move-result p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 44
    move-result v0

    .line 45
    add-int/2addr p2, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    new-instance p2, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    move-object v1, v0

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 72
    goto :goto_0

    .line 73
    :goto_1
    const/4 v2, 0x0

    .line 74
    .line 75
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 76
    .line 77
    iget-object v5, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    .line 78
    const/4 v6, 0x4

    .line 79
    .line 80
    iget v7, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->padding:I

    .line 81
    move-object v0, p2

    .line 82
    move-object v3, p1

    .line 83
    .line 84
    .line 85
    invoke-direct/range {v0 .. v7}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;-><init>(Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V

    .line 86
    .line 87
    iput-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 88
    const/4 v0, 0x3

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setRowOffset(I)V

    .line 92
    .line 93
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    .line 98
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V

    .line 109
    :cond_2
    return-void
.end method
