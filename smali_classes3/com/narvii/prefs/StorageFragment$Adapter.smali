.class final Lcom/narvii/prefs/StorageFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "StorageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/StorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment$Adapter\n*L\n1#1,353:1\n*E\n"
.end annotation


# instance fields
.field private final ASSETS_TAG:Lcom/narvii/util/Tag;

.field private final CACHE_TAG:Lcom/narvii/util/Tag;

.field private final DRAFT_TAG:Lcom/narvii/util/Tag;

.field private final modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/prefs/StorageFragment$StorageModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/prefs/StorageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/StorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/prefs/StorageFragment$StorageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nvContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p3, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    .line 86
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "cache"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    .line 87
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "assets"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    .line 88
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "drafts"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    return-void
.end method

.method private final setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b02e0

    .line 118
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    const p3, 0x7f090b9a

    .line 119
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById<TextView>(R.id.title)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090349

    .line 120
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "it"

    .line 121
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f090abe

    .line 124
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById<TextView>(R.id.storage)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090693

    .line 125
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById<SpinningView>(R.id.loading)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/SpinningView;

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {p1}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "view"

    .line 126
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "DIVIDER"

    if-eqz p1, :cond_1

    .line 92
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 94
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 95
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/prefs/StorageFragment$StorageModel;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/StorageFragment$Adapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/StorageFragment$Adapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/StorageFragment$Adapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 113
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "super.getView(position, convertView, parent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getList$p(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {p2}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/prefs/StorageFragment;->access$cleanCache(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V

    return p4

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    const-class p1, Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    const/16 p3, 0x2711

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p4

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getList$p(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {p2}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/prefs/StorageFragment;->access$cleanDrafts(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V

    return p4

    :cond_2
    return p2
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
