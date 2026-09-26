.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;
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

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$edit:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$edit:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 6
    return-void
.end method
