.class public final synthetic Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field private final synthetic f$1:Lcom/narvii/chat/ChatFragment;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z

.field private final synthetic f$4:Landroid/os/Bundle;

.field private final synthetic f$5:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$1:Lcom/narvii/chat/ChatFragment;

    iput p3, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$2:I

    iput-boolean p4, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$3:Z

    iput-object p5, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$4:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$5:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    return-void
.end method


# virtual methods
.method public final onVideoPickFinished()V
    .locals 6

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$1:Lcom/narvii/chat/ChatFragment;

    iget v2, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$2:I

    iget-boolean v3, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$3:Z

    iget-object v4, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$4:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/narvii/chat/video/fragments/-$$Lambda$VVChatMainFragment$ksYiqbtpFvZ_DsSe5ijegRLWClw;->f$5:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->lambda$onChannelEntryClicked$1$VVChatMainFragment(Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    return-void
.end method
