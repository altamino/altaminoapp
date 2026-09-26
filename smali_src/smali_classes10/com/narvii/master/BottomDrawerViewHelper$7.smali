.class Lcom/narvii/master/BottomDrawerViewHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/BottomDrawerViewHelper;->showSuggestCommunity(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerViewHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerViewHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$7;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$7;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->b(Lcom/narvii/master/BottomDrawerViewHelper;)Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper$7;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 16
    return-void
.end method
