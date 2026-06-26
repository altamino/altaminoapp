.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;Lcom/narvii/util/dialog/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;->this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 899
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;->this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->getEditText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 900
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;->this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$500(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    return-void
.end method
