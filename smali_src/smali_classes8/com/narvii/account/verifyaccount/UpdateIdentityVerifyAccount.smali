.class public final Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;
.super Lcom/narvii/account/verifyaccount/VerifyAccountType;
.source "SourceFile"


# instance fields
.field private final identity:Lcom/narvii/account/verifyaccount/IdentityType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/account/verifyaccount/IdentityType;)V
    .locals 1
    .param p1    # Lcom/narvii/account/verifyaccount/IdentityType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "identity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/narvii/account/verifyaccount/VerifyAccountType;-><init>(Lkotlin/jvm/internal/k;)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;->identity:Lcom/narvii/account/verifyaccount/IdentityType;

    .line 12
    return-void
.end method


# virtual methods
.method public final getIdentity()Lcom/narvii/account/verifyaccount/IdentityType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;->identity:Lcom/narvii/account/verifyaccount/IdentityType;

    return-object v0
.end method
