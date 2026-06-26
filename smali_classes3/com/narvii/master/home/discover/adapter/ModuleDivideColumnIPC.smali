.class public Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;
.super Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;
.source "ModuleDivideColumnIPC.java"


# instance fields
.field contentModule:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 16
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 21
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 27
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method
