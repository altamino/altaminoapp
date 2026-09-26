.class Lcom/narvii/user/title/EditUserTitleFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChangedEmpty()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->z(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->A(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$5$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$5$2;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$5;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public afterTextChangedNotEmpty(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->z(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    .line 11
    const/16 v1, 0x14

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/narvii/user/title/EditUserTitleFragment;->p(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    move v3, v2

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    const/16 v3, 0x8

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/user/title/EditUserTitleFragment;->r(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/user/title/EditUserTitleFragment;->r(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 50
    .line 51
    :cond_2
    if-nez v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 54
    .line 55
    iput-object p1, v0, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 56
    .line 57
    new-instance p1, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 60
    .line 61
    iget-object v3, v1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 62
    .line 63
    iget-object v4, v1, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v1, v3, v4}, Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->x(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->r(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    new-array v0, v2, [Ljava/lang/Void;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 84
    const/4 v0, 0x0

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/narvii/user/title/EditUserTitleFragment;->B(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V

    .line 88
    .line 89
    :goto_2
    new-instance p1, Lcom/narvii/user/title/EditUserTitleFragment$5$1;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$5$1;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$5;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public onSaveTextBeyondLimit()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->p(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->o(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/view/animation/Animation;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    const v2, 0x7f010013

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/user/title/EditUserTitleFragment;->w(Lcom/narvii/user/title/EditUserTitleFragment;Landroid/view/animation/Animation;)V

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->p(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$5;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/user/title/EditUserTitleFragment;->o(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/view/animation/Animation;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    :cond_1
    return-void
.end method
