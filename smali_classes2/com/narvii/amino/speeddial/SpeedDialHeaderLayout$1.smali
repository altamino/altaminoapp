.class Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$1;
.super Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
.source "SpeedDialHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Ljava/lang/Class;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-direct {p0, p2}, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    const-string p2, "SpeedDial"

    .line 121
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method
