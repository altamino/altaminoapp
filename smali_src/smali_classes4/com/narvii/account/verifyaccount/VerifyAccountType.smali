.class public abstract Lcom/narvii/account/verifyaccount/VerifyAccountType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/verifyaccount/VerifyAccountType$Companion;
    }
.end annotation


# static fields
.field public static final ADD_IDENTITY_VERIFY_ACCOUNT:I = 0x5

.field public static final CHANGE_PASSWORD_VERIFY_ACCOUNT:I = 0x3

.field public static final Companion:Lcom/narvii/account/verifyaccount/VerifyAccountType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DELETE_ACCOUNT_VERIFY_ACCOUNT:I = 0x8

.field public static final FORGOT_PASSWORD_VERIFY_ACCOUNT:I = 0x2

.field public static final RESET_PASSWORD_VERIFY_ACCOUNT:I = 0x1

.field public static final SIGNUP_VERIFY_ACCOUNT:I = 0x4

.field public static final UPDATE_IDENTITY_VERIFY_ACCOUNT:I = 0x6

.field public static final VERIFY_NEW_IDENTITY_VERIFY_ACCOUNT:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/verifyaccount/VerifyAccountType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/VerifyAccountType$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/verifyaccount/VerifyAccountType;->Companion:Lcom/narvii/account/verifyaccount/VerifyAccountType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountType;-><init>()V

    return-void
.end method
