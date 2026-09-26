.class public final synthetic Lcom/narvii/chat/dialog/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/dialog/j;->a:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/dialog/j;->a:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->d(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    return-void
.end method
