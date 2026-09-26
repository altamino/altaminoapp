.class public Lcom/narvii/chat/video/view/JoinChannelBanner;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field avatar:Lcom/narvii/widget/UserAvatarLayout;

.field indicator:Lcom/narvii/widget/NVImageView;

.field private liveMemberCount:I

.field memberCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/JoinChannelBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d06a8

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public notifyUserChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    move-result v1

    .line 29
    .line 30
    iput v1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->liveMemberCount:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->indicator:Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    const-string v2, "assets://video_white.webp"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->memberCount:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    iget v3, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->liveMemberCount:I

    .line 46
    .line 47
    .line 48
    const v4, 0x7f121022

    .line 49
    .line 50
    .line 51
    const v5, 0x7f121023

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 82
    move-result p2

    .line 83
    .line 84
    if-lez p2, :cond_3

    .line 85
    .line 86
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const/4 p1, 0x0

    .line 97
    .line 98
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 102
    :goto_1
    return-void

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0717

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->indicator:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a03bd

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->memberCount:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0171

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 37
    return-void
.end method
