.class public Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;
.super Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;
.source "SourceFile"


# instance fields
.field contentModule:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 9
    return-void
.end method
