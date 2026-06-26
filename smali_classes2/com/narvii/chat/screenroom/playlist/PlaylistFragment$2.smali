.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    :cond_0
    return-void
.end method
