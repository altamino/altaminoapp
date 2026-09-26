.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$playListItem:Lcom/narvii/model/PlayListItem;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Lcom/narvii/model/PlayListItem;Lcom/narvii/util/dialog/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->val$playListItem:Lcom/narvii/model/PlayListItem;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->val$edit:Landroid/widget/EditText;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->val$playListItem:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->getEditText()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->K(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;->val$edit:Landroid/widget/EditText;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 23
    return-void
.end method
