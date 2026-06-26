.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

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

    .line 232
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 236
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$400(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 237
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$500(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    return-void
.end method
