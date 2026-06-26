.class Lcom/narvii/master/BottomDrawerViewHelper$7;
.super Ljava/lang/Object;
.source "BottomDrawerViewHelper.java"

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

    .line 339
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$7;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$7;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-static {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->access$200(Lcom/narvii/master/BottomDrawerViewHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper$7;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object v2, v1, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    iget-object v1, v1, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, v2, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    return-void
.end method
