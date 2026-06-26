.class Lcom/narvii/account/SignUpAccountCreatedFragment$1;
.super Ljava/lang/Object;
.source "SignUpAccountCreatedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAccountCreatedFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpAccountCreatedFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAccountCreatedFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/account/SignUpAccountCreatedFragment$1;->this$0:Lcom/narvii/account/SignUpAccountCreatedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/narvii/account/SignUpAccountCreatedFragment$1;->this$0:Lcom/narvii/account/SignUpAccountCreatedFragment;

    const-string v1, "newAccount"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    return-void
.end method
