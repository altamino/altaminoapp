.class Lcom/narvii/paging/PageView$1;
.super Lcom/narvii/logging/PageViewDelegate;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/PageView;


# direct methods
.method constructor <init>(Lcom/narvii/paging/PageView;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/logging/PageViewDelegate;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    iget-object v0, v0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    instance-of v1, v0, Lcom/narvii/model/NVObject;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/narvii/model/NVObject;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/PageView;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    return-void
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    invoke-virtual {v0}, Lcom/narvii/paging/PageView;->logPageViewEvent()Z

    move-result v0

    return v0
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    iget-boolean v0, v0, Lcom/narvii/paging/PageView;->sendThirdParty:Z

    return v0
.end method
