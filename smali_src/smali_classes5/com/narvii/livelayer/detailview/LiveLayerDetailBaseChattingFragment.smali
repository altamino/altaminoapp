.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;,
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;,
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$StartChatAdapter;,
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;
    }
.end annotation


# instance fields
.field protected fromSpeedDial:Z

.field publicChatEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "fromSpeedDial"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->fromSpeedDial:Z

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    .line 37
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->publicChatEnabled:Z

    .line 38
    return-void
.end method
