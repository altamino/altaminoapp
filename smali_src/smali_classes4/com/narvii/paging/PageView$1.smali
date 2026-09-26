.class Lcom/narvii/paging/PageView$1;
.super Lcom/narvii/logging/PageViewDelegate;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/logging/PageViewDelegate;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/NVObject;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/PageView;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 19
    return-void
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/PageView;->logPageViewEvent()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView$1;->this$0:Lcom/narvii/paging/PageView;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/paging/PageView;->sendThirdParty:Z

    .line 5
    return v0
.end method
