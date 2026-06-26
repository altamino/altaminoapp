.class Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CommunityPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/CommunityPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitTopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/explorer/CommunityPageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    .line 228
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-static {v0}, Lcom/narvii/master/explorer/CommunityPageFragment;->access$000(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-static {v0}, Lcom/narvii/master/explorer/CommunityPageFragment;->access$000(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0102

    .line 248
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 249
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-static {p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->access$000(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-static {p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->access$000(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    .line 250
    invoke-static {p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->access$000(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    move-result-object p2

    iget p2, p2, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    const p3, -0xa9a9a9

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-static {p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->access$000(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    move-result-object p2

    iget p2, p2, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 249
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method
