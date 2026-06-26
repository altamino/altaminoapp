.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;
.source "LiveLayerDetailBaseChattingFragment.java"


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

    .line 35
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "fromSpeedDial"

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->fromSpeedDial:Z

    .line 45
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 46
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->publicChatEnabled:Z

    return-void
.end method
