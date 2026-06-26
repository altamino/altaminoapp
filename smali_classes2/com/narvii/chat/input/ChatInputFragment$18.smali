.class Lcom/narvii/chat/input/ChatInputFragment$18;
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


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$18;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$18;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1192
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$18;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
