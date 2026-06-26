.class final Lcom/narvii/chat/dialog/VVChatUserDialog$runnable$1;
.super Ljava/lang/Object;
.source "VVChatUserDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$runnable$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$runnable$1;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->updateViews()V

    return-void
.end method
