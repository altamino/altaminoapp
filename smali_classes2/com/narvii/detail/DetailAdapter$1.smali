.class Lcom/narvii/detail/DetailAdapter$1;
.super Lcom/narvii/logging/Impression/GridLayoutImpressionCollector;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/GridLayoutImpressionCollector<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$1;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/logging/Impression/GridLayoutImpressionCollector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    const-string p2, "LikesUser"

    .line 114
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method
