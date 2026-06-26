.class Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ChatListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopMarginAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 597
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/32 v0, 0xdc324

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 628
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 629
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p3, 0x42800000    # 64.0f

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 630
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p3

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p3, v0

    add-int/2addr p1, p3

    .line 631
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 632
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
