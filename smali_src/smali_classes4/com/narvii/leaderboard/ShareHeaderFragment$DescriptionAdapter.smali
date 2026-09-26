.class Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

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
    .locals 3

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d04cc

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a041f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f120b71

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 28
    .line 29
    iget v1, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x3

    .line 38
    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    .line 42
    const p3, 0x7f120b74

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object p3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v2, 0x4

    .line 49
    .line 50
    if-ne v1, v2, :cond_2

    .line 51
    .line 52
    .line 53
    const p3, 0x7f120b73

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object p3

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v2, 0x5

    .line 60
    .line 61
    if-ne v1, v2, :cond_4

    .line 62
    .line 63
    .line 64
    const p3, 0x7f120b75

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object p3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    const p3, 0x7f120b72

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
