.class Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/ShareHeaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BottomAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d04cb

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lcom/narvii/leaderboard/ShareHeaderFragment;->t(Lcom/narvii/leaderboard/ShareHeaderFragment;)Z

    .line 17
    move-result p3

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget-object p3, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Lcom/narvii/leaderboard/ShareHeaderFragment;->u(Lcom/narvii/leaderboard/ShareHeaderFragment;)I

    .line 25
    move-result p3

    .line 26
    .line 27
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 p3, 0xa

    .line 31
    .line 32
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
