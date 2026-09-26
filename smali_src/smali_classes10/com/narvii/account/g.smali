.class public final synthetic Lcom/narvii/account/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/account/CodeVerifyBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/CodeVerifyBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/g;->a:Lcom/narvii/account/CodeVerifyBaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/g;->a:Lcom/narvii/account/CodeVerifyBaseFragment;

    invoke-static {v0}, Lcom/narvii/account/CodeVerifyBaseFragment;->q(Lcom/narvii/account/CodeVerifyBaseFragment;)V

    return-void
.end method
