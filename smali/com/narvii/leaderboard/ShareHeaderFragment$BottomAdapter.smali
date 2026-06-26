.class Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ShareHeaderFragment.java"


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

    .line 165
    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    const p1, 0x7f0b049f

    .line 186
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 188
    iget-object p3, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    invoke-static {p3}, Lcom/narvii/leaderboard/ShareHeaderFragment;->access$100(Lcom/narvii/leaderboard/ShareHeaderFragment;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 189
    iget-object p3, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    invoke-static {p3}, Lcom/narvii/leaderboard/ShareHeaderFragment;->access$200(Lcom/narvii/leaderboard/ShareHeaderFragment;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    .line 191
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
