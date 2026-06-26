.class Lcom/narvii/chat/input/ChatInputFragment$19;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

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

    .line 1195
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1198
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$19;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$2200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$19$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$19$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment$19;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendRequestToJoinThreadRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method
