.class public abstract Lcom/narvii/account/verifyaccount/IdentityType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/verifyaccount/IdentityType$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/verifyaccount/IdentityType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EMAIL_IDENTITY:I = 0x2

.field public static final PHONE_NUMBER_IDENTITY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/verifyaccount/IdentityType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/IdentityType$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/verifyaccount/IdentityType;->Companion:Lcom/narvii/account/verifyaccount/IdentityType$Companion;

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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/IdentityType;-><init>()V

    return-void
.end method
