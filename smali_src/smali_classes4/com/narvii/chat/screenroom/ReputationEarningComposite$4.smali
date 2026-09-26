.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->G(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->K(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->H(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->D(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->d(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->F(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->F(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    const/16 v1, 0x8

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->M(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->t(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    const-wide/16 v2, 0x3a98

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    :cond_3
    :goto_0
    return-void
.end method
