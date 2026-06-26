.class public final Lcom/narvii/master/home/discover/adapter/CardTopAdapter;
.super Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;
.source "CardTopAdapter.kt"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItemLayout()I
    .locals 1

    const v0, 0x7f0b06d5

    return v0
.end method
