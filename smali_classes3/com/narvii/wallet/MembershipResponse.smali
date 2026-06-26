.class public Lcom/narvii/wallet/MembershipResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "MembershipResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/wallet/MembershipStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public hasAnyAndroidSubscription:Z

.field public hasAnyAppleSubscription:Z

.field public membership:Lcom/narvii/wallet/MembershipStatus;

.field public premiumFeatureEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipResponse;->object()Lcom/narvii/wallet/MembershipStatus;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/wallet/MembershipStatus;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    return-object v0
.end method
