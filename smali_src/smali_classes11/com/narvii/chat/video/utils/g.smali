.class public final synthetic Lcom/narvii/chat/video/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/g;->a:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/g;->a:Lcom/narvii/widget/ACMAlertDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->p(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
