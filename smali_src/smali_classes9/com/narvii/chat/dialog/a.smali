.class public final synthetic Lcom/narvii/chat/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/dialog/a;->a:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/dialog/a;->a:Lcom/narvii/chat/dialog/VVChatUserDialog;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->q(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/Boolean;)V

    return-void
.end method
