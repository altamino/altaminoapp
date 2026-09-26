.class public Lcom/narvii/model/TippingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public tipCustomOption:Lcom/narvii/model/TippingOption;

.field public tipMaxCoin:I

.field public tipMinCoin:I

.field public tipOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/TippingOption;",
            ">;"
        }
    .end annotation
.end field

.field public tippable:Z

.field public tippedCoins:I

.field public tippersCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
