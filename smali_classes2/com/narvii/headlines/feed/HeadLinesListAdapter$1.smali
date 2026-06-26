.class Lcom/narvii/headlines/feed/HeadLinesListAdapter$1;
.super Lcom/narvii/logging/Impression/LinearImpressionCollector;
.source "HeadLinesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Ljava/lang/Class;I)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$1;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1

    .line 155
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 156
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$1;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    return-void
.end method
