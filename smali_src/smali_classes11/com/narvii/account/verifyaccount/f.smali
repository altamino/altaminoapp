.class public final synthetic Lcom/narvii/account/verifyaccount/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/account/verifyaccount/SetPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/verifyaccount/f;->a:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/f;->a:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->s(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Lcom/narvii/model/User;)V

    return-void
.end method
