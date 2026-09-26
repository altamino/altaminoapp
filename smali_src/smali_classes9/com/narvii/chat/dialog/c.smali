.class public final synthetic Lcom/narvii/chat/dialog/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/dialog/VVChatUserDialog;

.field public final synthetic b:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/dialog/c;->a:Lcom/narvii/chat/dialog/VVChatUserDialog;

    iput-object p2, p0, Lcom/narvii/chat/dialog/c;->b:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/dialog/c;->a:Lcom/narvii/chat/dialog/VVChatUserDialog;

    iget-object v1, p0, Lcom/narvii/chat/dialog/c;->b:Lcom/narvii/widget/ACMAlertDialog;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->i(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
