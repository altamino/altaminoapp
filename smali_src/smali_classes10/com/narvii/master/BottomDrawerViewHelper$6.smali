.class Lcom/narvii/master/BottomDrawerViewHelper$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$6;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerViewHelper$6;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, p2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 13
    return-void
.end method
