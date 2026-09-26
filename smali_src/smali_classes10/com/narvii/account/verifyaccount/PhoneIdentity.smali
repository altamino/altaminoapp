.class public final Lcom/narvii/account/verifyaccount/PhoneIdentity;
.super Lcom/narvii/account/verifyaccount/IdentityType;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/account/verifyaccount/PhoneIdentity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    invoke-direct {v0}, Lcom/narvii/account/verifyaccount/PhoneIdentity;-><init>()V

    sput-object v0, Lcom/narvii/account/verifyaccount/PhoneIdentity;->INSTANCE:Lcom/narvii/account/verifyaccount/PhoneIdentity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/account/verifyaccount/IdentityType;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method
