.class public final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;
.super Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
.source "MyCommunityModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "I)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

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
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 44
    iget-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-virtual {p2}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 46
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "listViewEnterSource"

    const-string v0, "moreButton"

    .line 47
    invoke-virtual {p1, p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    return-void
.end method
