.class public final synthetic Lcom/narvii/account/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/EmailSignupFragment;

.field public final synthetic b:Lcom/narvii/widget/ACMAlertDialog;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/n;->a:Lcom/narvii/account/EmailSignupFragment;

    iput-object p2, p0, Lcom/narvii/account/n;->b:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p3, p0, Lcom/narvii/account/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/account/n;->a:Lcom/narvii/account/EmailSignupFragment;

    iget-object v1, p0, Lcom/narvii/account/n;->b:Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, p0, Lcom/narvii/account/n;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/account/EmailSignupFragment;->r(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
