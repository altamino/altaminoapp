.class Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ShareHeaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/ShareHeaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescriptionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 207
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
    .locals 3

    const p1, 0x7f0b04a0

    .line 227
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090341

    .line 228
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 229
    iget-object p3, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    const v0, 0x7f0f0abe

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 230
    iget-object v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    iget v1, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const p3, 0x7f0f0ac1

    .line 234
    invoke-virtual {v0, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const p3, 0x7f0f0ac0

    .line 236
    invoke-virtual {v0, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    const p3, 0x7f0f0ac2

    .line 238
    invoke-virtual {v0, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 232
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    const v0, 0x7f0f0abf

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 240
    :cond_4
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
