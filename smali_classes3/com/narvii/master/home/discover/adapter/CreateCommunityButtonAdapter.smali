.class public Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "CreateCommunityButtonAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateCommunityButtonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCommunityButtonAdapter.kt\ncom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter\n*L\n1#1,136:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field private ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

.field private final masterHelper$delegate:Lkotlin/Lazy;

.field private showList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "masterHelper"

    const-string v4, "getMasterHelper()Lcom/narvii/master/MasterHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 27
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 30
    new-instance p1, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$masterHelper$2;

    invoke-direct {p1, p0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$masterHelper$2;-><init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->masterHelper$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ipc$1;

    const-class p2, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {p1, p0, p2}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ipc$1;-><init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "contentModule.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public final getIpc()Lcom/narvii/logging/Impression/LinearImpressionCollector;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    const-string v0, "result"

    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->showList:Z

    return v0
.end method

.method public final getMasterHelper()Lcom/narvii/master/MasterHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->masterHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterHelper;

    return-object v0
.end method

.method public final getShowList()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->showList:Z

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->isSubRequestFinish()Z

    move-result v0

    return v0
.end method

.method public isReadyToRequest()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    move-result v0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 79
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 80
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->isReadyToRequest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->showList:Z

    .line 84
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;->getHint()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0312

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->getItem(I)Ljava/lang/Object;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0355

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026ate_amino, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->showList:Z

    .line 90
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/LinearImpressionCollector;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method

.method public final setShowList(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->showList:Z

    return-void
.end method
