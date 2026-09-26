.class public final synthetic Lcom/narvii/chat/dialog/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVContext;

.field public final synthetic b:Lcom/narvii/model/User;

.field public final synthetic c:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/dialog/k;->a:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/chat/dialog/k;->b:Lcom/narvii/model/User;

    iput-object p3, p0, Lcom/narvii/chat/dialog/k;->c:Lcom/narvii/chat/dialog/VVChatUserDialog;

    return-void
.end method


# virtual methods
.method public final onClicked(ILcom/narvii/model/NVObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/dialog/k;->a:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/chat/dialog/k;->b:Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/chat/dialog/k;->c:Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog;->e(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/chat/dialog/VVChatUserDialog;ILcom/narvii/model/NVObject;)V

    return-void
.end method
