.class public abstract Lcom/narvii/wallet/BillingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/BillingState$Connected;,
        Lcom/narvii/wallet/BillingState$Connecting;,
        Lcom/narvii/wallet/BillingState$Idle;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/BillingState;-><init>()V

    return-void
.end method


# virtual methods
.method public final isConnected()Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/wallet/BillingState$Connected;

    .line 3
    return v0
.end method
