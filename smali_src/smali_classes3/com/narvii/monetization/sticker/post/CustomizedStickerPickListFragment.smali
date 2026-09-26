.class public Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

.field collectionId:Ljava/lang/String;

.field selectedStickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field singlePick:Z

.field stickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 11
    return-void
.end method

.method private finishWithResult()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "stickerList"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    const-string v1, "index"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    const/4 v1, -0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 33
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->finishWithResult()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const/high16 v0, 0x40a00000    # 5.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result p1

    .line 11
    float-to-int v5, p1

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, p0

    .line 18
    move v4, v5

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    .line 29
    .line 30
    const-class v2, Lcom/narvii/model/Sticker;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, p0, v2}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 34
    .line 35
    iput-object v1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->adapter:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    const/4 v1, 0x3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 43
    return-object p1
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;-><init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f120402

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 29
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "sticker"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 14
    .line 15
    const-string p1, "singlePick"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerService;->getCustomizedCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->collectionId:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    const p1, 0x7f1202a2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 49
    return-void

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 53
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method
