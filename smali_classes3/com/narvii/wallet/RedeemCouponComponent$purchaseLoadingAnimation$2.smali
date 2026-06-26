.class final Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RedeemCouponComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/RedeemCouponComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/RedeemCouponComponent;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/RedeemCouponComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/animation/Animation;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v0}, Lcom/narvii/wallet/RedeemCouponComponent;->access$lazyInitPurchaseLoading(Lcom/narvii/wallet/RedeemCouponComponent;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/narvii/wallet/RedeemCouponComponent$purchaseLoadingAnimation$2;->invoke()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
