.class public Lcom/narvii/chat/video/view/LiveUserLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;
    }
.end annotation


# instance fields
.field clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

.field invite:Landroid/view/View;

.field liveUserCount:Landroid/widget/TextView;

.field recyclerView:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

.field root:Landroid/view/View;

.field protected users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field

.field vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0d0796

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const p2, 0x7f0a0816

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a0819

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    check-cast p2, Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->recyclerView:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 39
    .line 40
    .line 41
    const p2, 0x7f0a0818

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->root:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->root:Landroid/view/View;

    .line 53
    const/4 v0, 0x4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    const p2, 0x7f0a073d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->invite:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    new-instance p2, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 78
    .line 79
    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 80
    return-void
.end method


# virtual methods
.method public notifyUserChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUser(Ljava/util/List;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->recyclerView:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->notifyUserChanged(Ljava/util/List;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->root:Landroid/view/View;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    const/4 v1, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a073d

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0818

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;->onClickWholeLayout()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;->onClickInviteButton()V

    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public setClickListener(Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->recyclerView:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/chat/video/view/LiveUserLayout$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/view/LiveUserLayout$1;-><init>(Lcom/narvii/chat/video/view/LiveUserLayout;Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_0
    return-void
.end method
