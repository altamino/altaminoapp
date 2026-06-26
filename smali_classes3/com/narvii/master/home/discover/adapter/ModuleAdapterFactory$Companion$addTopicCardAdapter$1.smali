.class final Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;
.super Ljava/lang/Object;
.source "ModuleAdapterFactory.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addTopicCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ctx:Lcom/narvii/app/NVContext;

.field final synthetic $module:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 141
    sget-object p1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$ctx:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    const-string v2, "moduleTitle"

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->access$clickShowAllLog(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v0, "BookmarkedTopics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    const-class p1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :cond_0
    sget-object p1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;->$ctx:Lcom/narvii/app/NVContext;

    invoke-static {p1, v0, v1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->access$showMoreTopic(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    :goto_0
    return-void
.end method
