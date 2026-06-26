.class public Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CustomizedStickerPickListFragment.java"


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

    .line 47
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->finishWithResult()V

    return-void
.end method

.method private finishWithResult()V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stickerList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "index"

    .line 104
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 105
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 111
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int v5, p1

    .line 112
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 113
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 114
    new-instance v1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    const-class v2, Lcom/narvii/model/Sticker;

    invoke-direct {v1, p0, p0, v2}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->adapter:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    .line 115
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->adapter:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x3

    .line 116
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 122
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 86
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f0f03aa

    new-instance v1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;-><init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "sticker"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const-string p1, "singlePick"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->singlePick:Z

    .line 64
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerService;->getCustomizedCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->collectionId:Ljava/lang/String;

    const p1, 0x7f0f025e

    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
