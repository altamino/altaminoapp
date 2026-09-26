.class final Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyAccountType$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/CodeVerifyFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/account/verifyaccount/VerifyAccountType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyAccountType$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyAccountType$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    const-string/jumbo v1, "verify_type"

    .line 2
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyAccountType$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    const-string/jumbo v2, "set_identity_type"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->verifyAccountType(II)Lcom/narvii/account/verifyaccount/VerifyAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyAccountType$2;->invoke()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    move-result-object v0

    return-object v0
.end method
