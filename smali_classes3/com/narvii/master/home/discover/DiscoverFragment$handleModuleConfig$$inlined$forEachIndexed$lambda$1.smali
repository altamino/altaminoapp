.class public final Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;
.super Ljava/lang/Object;
.source "DiscoverFragment.kt"

# interfaces
.implements Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverFragment;->handleModuleConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $allAdapterSize$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $indexOffset$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $moduleList$inlined:Ljava/util/List;

.field final synthetic $setTopStoryModule$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    iput-object p2, p0, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;->$allAdapterSize$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;->$moduleList$inlined:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;->$setTopStoryModule$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;->$indexOffset$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 476
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->setImmersiveHeader(Z)V

    :cond_1
    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/ad/AdsModuleListResponse;I)V
    .locals 0

    const-string p3, "req"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p3, p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz p1, :cond_3

    iget-object p2, p2, Lcom/narvii/ad/AdsModuleListResponse;->itemList:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-virtual {p1, p3}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->setImmersiveHeader(Z)V

    :cond_3
    return-void
.end method
