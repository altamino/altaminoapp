.class public final synthetic Lcom/narvii/account/resetpassword/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/resetpassword/a;->a:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/resetpassword/a;->a:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    invoke-static {v0, p1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->s(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Landroid/view/View;)V

    return-void
.end method
