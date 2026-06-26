.class final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$dataSetChangeListener$1;
.super Ljava/lang/Object;
.source "AdsModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$dataSetChangeListener$1;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataSetChanged()V
    .locals 1

    .line 42
    new-instance v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$dataSetChangeListener$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$dataSetChangeListener$1$1;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$dataSetChangeListener$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
