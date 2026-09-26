.class public final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;
.super Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
.source "SourceFile"


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
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 3
    .line 4
    .line 5
    const p1, 0x7f0a04db

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, p1}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    .line 9
    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/logging/ObjectInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iget-object p2, p2, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "listViewEnter"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p2

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string p2, "listViewEnterSource"

    .line 34
    .line 35
    const-string v0, "moreButton"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 39
    :cond_0
    return-void
.end method
