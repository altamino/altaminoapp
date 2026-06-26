.class public Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;
.super Lcom/narvii/chat/video/overlay/AudienceLayout;
.source "AudienceAnimatedLayout.java"


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

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    const p2, 0x7f0b0381

    .line 33
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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

    .line 45
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/signalling/ChannelUser;

    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 61
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUser(Ljava/util/List;)V

    .line 63
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->audienceCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->memberBar:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->users:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->notifyUserChanged(Ljava/util/List;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0900cd

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->audienceCount:Landroid/widget/TextView;

    const v0, 0x7f0900cf

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedLayout;->memberBar:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    return-void
.end method
