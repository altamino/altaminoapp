.class final Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;
.super Ljava/lang/Object;
.source "ModuleAdapterFactory.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ctx:Lcom/narvii/app/NVContext;

.field final synthetic $hostAdapter:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $list:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $module:Lcom/narvii/topic/model/discover/ContentModule;

.field final synthetic $token:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$hostAdapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 296
    sget-object p1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$ctx:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    const-string v2, "moduleTitle"

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->access$clickShowAllLog(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$hostAdapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    instance-of v0, v0, Lcom/narvii/topic/model/CommunityDataSourceCarrier;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    check-cast p1, Lcom/narvii/topic/model/CommunityDataSourceCarrier;

    invoke-interface {p1}, Lcom/narvii/topic/model/CommunityDataSourceCarrier;->getCommunityList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 299
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$hostAdapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    check-cast v0, Lcom/narvii/topic/model/CommunityDataSourceCarrier;

    invoke-interface {v0}, Lcom/narvii/topic/model/CommunityDataSourceCarrier;->getLastPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 301
    :cond_0
    sget-object p1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v3, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;->$ctx:Lcom/narvii/app/NVContext;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->access$showMoreCommunity(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Ljava/util/ArrayList;Ljava/lang/String;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    return-void
.end method
