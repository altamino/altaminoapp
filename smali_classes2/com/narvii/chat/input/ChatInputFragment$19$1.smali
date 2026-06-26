.class Lcom/narvii/chat/input/ChatInputFragment$19$1;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/input/ChatInputFragment$19;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment$19;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$19$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 1201
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$19$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$19;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment$19;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1202
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$19$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$19$1$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment$19$1;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1208
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$19$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$19;

    iget-object p1, p1, Lcom/narvii/chat/input/ChatInputFragment$19;->val$view:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1209
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1198
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$19$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
