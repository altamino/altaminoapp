.class public Lcom/narvii/chat/video/view/JoinChannelBanner;
.super Landroid/widget/LinearLayout;
.source "JoinChannelBanner.java"


# instance fields
.field avatar:Lcom/narvii/widget/UserAvatarLayout;

.field indicator:Lcom/narvii/widget/NVImageView;

.field private liveMemberCount:I

.field memberCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/JoinChannelBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b05f4

    .line 33
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public notifyUserChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;)V
    .locals 6

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 49
    :cond_0
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->liveMemberCount:I

    .line 55
    iget-object v1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->indicator:Lcom/narvii/widget/NVImageView;

    const-string v2, "assets://video_white.webp"

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 56
    iget-object v1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->memberCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->liveMemberCount:I

    const v4, 0x7f0f0f0b

    const v5, 0x7f0f0f0c

    invoke-static {v2, v3, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_1

    .line 60
    :cond_2
    iget-object p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    iget-object p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 61
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :goto_1
    return-void

    .line 50
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090590

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->indicator:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0902ec

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->memberCount:Landroid/widget/TextView;

    const v0, 0x7f0900e4

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/view/JoinChannelBanner;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method
