.class public final synthetic Lcom/narvii/account/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/EmailSignupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/EmailSignupFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/j;->a:Lcom/narvii/account/EmailSignupFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/j;->a:Lcom/narvii/account/EmailSignupFragment;

    invoke-static {v0, p1}, Lcom/narvii/account/EmailSignupFragment;->q(Lcom/narvii/account/EmailSignupFragment;Landroid/view/View;)V

    return-void
.end method
