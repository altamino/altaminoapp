.class Lcom/narvii/master/BottomDrawerViewHelper$5;
.super Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
.source "BottomDrawerViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/BottomDrawerViewHelper;->showSuggestCommunity(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerViewHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerViewHelper;Ljava/lang/Class;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$5;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-direct {p0, p2}, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0

    .line 319
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    const-string p2, "AminoSuggestPopup"

    .line 320
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 321
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerViewHelper$5;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-static {p2}, Lcom/narvii/master/BottomDrawerViewHelper;->access$100(Lcom/narvii/master/BottomDrawerViewHelper;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    const-string p2, "RecommendArea"

    .line 322
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method
