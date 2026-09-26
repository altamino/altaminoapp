.class public final Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;
.super Lcom/narvii/account/verifyaccount/VerifyAccountType;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    invoke-direct {v0}, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;-><init>()V

    sput-object v0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;->INSTANCE:Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/account/verifyaccount/VerifyAccountType;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method
