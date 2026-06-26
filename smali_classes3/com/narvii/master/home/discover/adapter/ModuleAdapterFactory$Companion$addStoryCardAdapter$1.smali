.class final Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;
.super Ljava/lang/Object;
.source "ModuleAdapterFactory.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addStoryCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ctx:Lcom/narvii/app/NVContext;

.field final synthetic $displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field final synthetic $generalStoryCardAdapter:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

.field final synthetic $module:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    iput-object p4, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$generalStoryCardAdapter:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 213
    sget-object p1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$ctx:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    const-string v2, "moduleTitle"

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->access$clickShowAllLog(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 214
    sget-object p1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$ctx:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    iget-object v3, p0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;->$generalStoryCardAdapter:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->access$showMoreStory(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;)V

    return-void
.end method
