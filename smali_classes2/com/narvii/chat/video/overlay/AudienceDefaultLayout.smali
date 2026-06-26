.class public Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;
.super Lcom/narvii/chat/video/overlay/AudienceLayout;
.source "AudienceDefaultLayout.java"


# instance fields
.field audienceCount:Landroid/widget/TextView;

.field avatar1:Lcom/narvii/widget/UserAvatarLayout;

.field avatar2:Lcom/narvii/widget/UserAvatarLayout;

.field avatar3:Lcom/narvii/widget/UserAvatarLayout;

.field avatar4:Lcom/narvii/widget/UserAvatarLayout;

.field protected users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b0382

    .line 38
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public notifyUserChanged(Ljava/util/List;)V
    .locals 3
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

    :cond_0
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUser(Ljava/util/List;)V

    .line 65
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->updateViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0900cd

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->audienceCount:Landroid/widget/TextView;

    const v0, 0x7f0900e5

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar1:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f0900e6

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar2:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f0900e7

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar3:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f0900e8

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected updateViews()V
    .locals 9

    .line 70
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->audienceCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar1:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar2:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v5, 0x2

    if-lt v0, v5, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar3:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v6, 0x3

    if-lt v0, v6, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 79
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v7, 0x4

    if-lt v0, v7, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/16 v8, 0x8

    :goto_3
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-lt v0, v7, :cond_5

    .line 82
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v8, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v8, v8, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {v2, v8}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_5
    if-lt v0, v6, :cond_6

    .line 85
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar3:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v6, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {v2, v6}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_6
    if-lt v0, v5, :cond_7

    .line 88
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar2:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v5, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {v2, v5}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_7
    if-lt v0, v3, :cond_8

    .line 91
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar1:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v5, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {v2, v5}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_8
    if-le v0, v7, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    const v0, 0x7f09080a

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_a

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    .line 97
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090723

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_b

    const/4 v1, 0x0

    .line 100
    :cond_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09062f

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
