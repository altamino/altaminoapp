.class Lcom/narvii/chat/input/ChatInputFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onInvited()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;

.field final synthetic val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$15;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$15;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$15;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$15;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->v(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendRequestToJoinThreadRequest(Lcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method
