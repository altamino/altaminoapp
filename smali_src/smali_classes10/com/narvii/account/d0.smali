.class public final synthetic Lcom/narvii/account/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/widget/ACMAlertDialog;

.field public final synthetic b:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/account/MobileSignupFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/d0;->a:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/account/d0;->b:Lcom/narvii/account/MobileSignupFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/account/d0;->a:Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/account/d0;->b:Lcom/narvii/account/MobileSignupFragment;

    invoke-static {v0, v1, p1}, Lcom/narvii/account/MobileSignupFragment;->q(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/account/MobileSignupFragment;Landroid/view/View;)V

    return-void
.end method
