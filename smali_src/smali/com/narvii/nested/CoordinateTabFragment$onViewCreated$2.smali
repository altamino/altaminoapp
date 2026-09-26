.class public final Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public springCallback(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getEnableSwipeRefreshLayout()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->springRefreshOffset()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-lt p1, v0, :cond_0

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    .line 31
    :goto_0
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    :goto_1
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->configSpinnerBeforeMove()V

    .line 53
    .line 54
    :cond_2
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getEnterRefresh()Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    int-to-float v3, p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    .line 73
    .line 74
    :cond_3
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/nested/CoordinateTabFragment;->setEnterRefresh(Z)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    int-to-float v1, p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 92
    .line 93
    :cond_4
    if-nez p1, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    int-to-float p1, p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_5
    if-nez p1, :cond_6

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshRequestSent()Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v2}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshRequestSent(Z)V

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2}, Lcom/narvii/nested/CoordinateTabFragment;->setEnterRefresh(Z)V

    .line 127
    :cond_6
    :goto_2
    return-void
.end method
