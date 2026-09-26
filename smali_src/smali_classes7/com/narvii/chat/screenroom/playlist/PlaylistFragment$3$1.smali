.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->w(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->G(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->K(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 26
    return-void
.end method
