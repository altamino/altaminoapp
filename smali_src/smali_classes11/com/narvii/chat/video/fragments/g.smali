.class public final synthetic Lcom/narvii/chat/video/fragments/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field public final synthetic b:Lcom/narvii/chat/ChatFragment;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/g;->a:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/g;->b:Lcom/narvii/chat/ChatFragment;

    iput p3, p0, Lcom/narvii/chat/video/fragments/g;->c:I

    iput-boolean p4, p0, Lcom/narvii/chat/video/fragments/g;->d:Z

    iput-object p5, p0, Lcom/narvii/chat/video/fragments/g;->e:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/narvii/chat/video/fragments/g;->f:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    return-void
.end method


# virtual methods
.method public final onVideoPickFinished()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/g;->a:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/g;->b:Lcom/narvii/chat/ChatFragment;

    iget v2, p0, Lcom/narvii/chat/video/fragments/g;->c:I

    iget-boolean v3, p0, Lcom/narvii/chat/video/fragments/g;->d:Z

    iget-object v4, p0, Lcom/narvii/chat/video/fragments/g;->e:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/narvii/chat/video/fragments/g;->f:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->o(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/ChatFragment;IZLandroid/os/Bundle;Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    return-void
.end method
