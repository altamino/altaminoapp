.class Lcom/narvii/chat/input/ChatInputFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->showJoinChatDialog(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;

.field final synthetic val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->val$view:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->v(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$19$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$19$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment$19;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendRequestToJoinThreadRequest(Lcom/narvii/util/Callback;)V

    .line 15
    return-void
.end method
