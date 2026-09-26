.class public final synthetic Lcom/narvii/wallet/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/RedeemCouponComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/RedeemCouponComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/n0;->a:Lcom/narvii/wallet/RedeemCouponComponent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/n0;->a:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/narvii/wallet/RedeemCouponComponent;->e(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    return-void
.end method
