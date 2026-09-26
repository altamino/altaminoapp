.class public final synthetic Lcom/narvii/account/verifyaccount/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/account/verifyaccount/SetPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/verifyaccount/g;->a:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/g;->a:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    invoke-static {v0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->q(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    return-void
.end method
