.class public Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;
.super Lcom/narvii/chat/video/overlay/AudienceLayout;
.source "SourceFile"


# instance fields
.field audienceCount:Landroid/widget/TextView;

.field private memberBar:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

.field private users:Ljava/util/List;
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    const p2, 0x7f0d03bc

    .line 4
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public notifyUserChanged(Ljava/util/List;)V
    .locals 5
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
    .line 3
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    const/4 v0, 0x0

    .line 19
    move v2, v0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-ge v2, v3, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    .line 32
    .line 33
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 34
    const/4 v4, 0x3

    .line 35
    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUser(Ljava/util/List;)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    move-result p1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->audienceCount:Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->memberBar:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->notifyUserChanged(Ljava/util/List;)V

    .line 99
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
    const v0, 0x7f0a0155

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->audienceCount:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0157

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->memberBar:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 26
    return-void
.end method
