.class public final synthetic Lcom/narvii/account/-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/account/EmailSignupFragment;

.field private final synthetic f$1:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE;->f$0:Lcom/narvii/account/EmailSignupFragment;

    iput-object p2, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE;->f$0:Lcom/narvii/account/EmailSignupFragment;

    iget-object v1, p0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE;->f$1:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/account/EmailSignupFragment;->lambda$handleAlreadyRegistered$1$EmailSignupFragment(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
