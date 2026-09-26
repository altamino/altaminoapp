.class public final synthetic Lcom/narvii/chat/global/chat/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/f;->a:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/chat/f;->a:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->u(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
