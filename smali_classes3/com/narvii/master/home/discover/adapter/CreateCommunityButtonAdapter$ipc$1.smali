.class public final Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ipc$1;
.super Lcom/narvii/logging/Impression/LinearImpressionCollector;
.source "CreateCommunityButtonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ipc$1;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 36
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter$ipc$1;->this$0:Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    invoke-virtual {p2}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method
