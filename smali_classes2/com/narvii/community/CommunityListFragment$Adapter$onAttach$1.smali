.class public final Lcom/narvii/community/CommunityListFragment$Adapter$onAttach$1;
.super Lcom/narvii/logging/Impression/LinearImpressionCollector;
.source "CommunityListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/CommunityListFragment$Adapter;->onAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityListFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityListFragment$Adapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment$Adapter$onAttach$1;->this$0:Lcom/narvii/community/CommunityListFragment$Adapter;

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

    .line 101
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 102
    iget-object p2, p0, Lcom/narvii/community/CommunityListFragment$Adapter$onAttach$1;->this$0:Lcom/narvii/community/CommunityListFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    const-string v0, "_module"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method
