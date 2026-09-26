.class final Lcom/narvii/account/SuccessfullyCompletedFragment$accountService$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SuccessfullyCompletedFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/account/AccountService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SuccessfullyCompletedFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SuccessfullyCompletedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/SuccessfullyCompletedFragment$accountService$2;->this$0:Lcom/narvii/account/SuccessfullyCompletedFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/account/AccountService;
    .locals 2

    iget-object v0, p0, Lcom/narvii/account/SuccessfullyCompletedFragment$accountService$2;->this$0:Lcom/narvii/account/SuccessfullyCompletedFragment;

    const-string v1, "account"

    .line 2
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment$accountService$2;->invoke()Lcom/narvii/account/AccountService;

    move-result-object v0

    return-object v0
.end method
