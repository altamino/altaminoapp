.class public Lcom/narvii/chat/video/view/LiveUserLayout;
.super Landroid/widget/FrameLayout;
.source "LiveUserLayout.java"

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

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    const p2, 0x7f0b06e3

    .line 76
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f09068d

    .line 77
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    const p2, 0x7f090690

    .line 78
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->recyclerView:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    const p2, 0x7f09068f

    .line 79
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->root:Landroid/view/View;

    .line 80
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->root:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->root:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0905c0

    .line 82
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->invite:Landroid/view/View;

    .line 83
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->invite:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 85
    new-instance p2, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

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

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUser(Ljava/util/List;)V

    .line 95
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->recyclerView:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->notifyUserChanged(Ljava/util/List;)V

    .line 97
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->users:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result p1

    .line 98
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->root:Landroid/view/View;

    if-nez p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0905c0

    if-eq p1, v0, :cond_1

    const v0, 0x7f09068f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    if-eqz p1, :cond_2

    .line 43
    invoke-interface {p1}, Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;->onClickWholeLayout()V

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    if-eqz p1, :cond_2

    .line 48
    invoke-interface {p1}, Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;->onClickInviteButton()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setClickListener(Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;)V
    .locals 2

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    .line 62
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserLayout;->recyclerView:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Lcom/narvii/chat/video/view/LiveUserLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/view/LiveUserLayout$1;-><init>(Lcom/narvii/chat/video/view/LiveUserLayout;Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
