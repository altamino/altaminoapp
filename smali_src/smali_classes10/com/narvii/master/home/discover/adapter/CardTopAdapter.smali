.class public final Lcom/narvii/master/home/discover/adapter/CardTopAdapter;
.super Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public getItemLayout()I
    .locals 1

    const v0, 0x7f0d0789

    return v0
.end method
