.class public final synthetic Lcom/narvii/account/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/MobileSignupFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/f0;->a:Lcom/narvii/account/MobileSignupFragment;

    iput-object p2, p0, Lcom/narvii/account/f0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/account/f0;->c:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/account/f0;->a:Lcom/narvii/account/MobileSignupFragment;

    iget-object v1, p0, Lcom/narvii/account/f0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/account/f0;->c:Lcom/narvii/widget/ACMAlertDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->a(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
