.class Lcom/narvii/master/BottomDrawerViewHelper$5;
.super Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$5;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 4
    .line 5
    const-string p2, "AminoSuggestPopup"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerViewHelper$5;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/master/BottomDrawerViewHelper;->a(Lcom/narvii/master/BottomDrawerViewHelper;)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    .line 19
    const-string p2, "RecommendArea"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    return-void
.end method
