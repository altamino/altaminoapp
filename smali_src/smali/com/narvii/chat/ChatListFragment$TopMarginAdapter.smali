.class Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const/high16 p3, 0x42800000    # 64.0f

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 21
    move-result p1

    .line 22
    float-to-int p1, p1

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 28
    move-result p3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 34
    move-result v0

    .line 35
    add-int/2addr p3, v0

    .line 36
    add-int/2addr p1, p3

    .line 37
    .line 38
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    .line 39
    const/4 v0, -0x1

    .line 40
    .line 41
    .line 42
    invoke-direct {p3, v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_0
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
