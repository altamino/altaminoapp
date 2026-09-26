.class public final synthetic Lcom/narvii/chat/dialog/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/widget/ACMAlertDialog;

.field public final synthetic b:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/dialog/e;->a:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/chat/dialog/e;->b:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/dialog/e;->a:Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/dialog/e;->b:Lcom/narvii/util/Callback;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->m(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method
