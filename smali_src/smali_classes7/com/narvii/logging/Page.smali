.class public interface abstract Lcom/narvii/logging/Page;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getPageName()Ljava/lang/String;
.end method

.method public abstract getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;
.end method

.method public abstract getPvId()Ljava/lang/String;
.end method

.method public abstract getStrategyInfo()Ljava/lang/String;
.end method

.method public abstract isFinalPage()Z
.end method

.method public abstract isValidPage()Z
.end method
