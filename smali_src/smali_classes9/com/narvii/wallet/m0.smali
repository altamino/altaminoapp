.class public final synthetic Lcom/narvii/wallet/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/RedeemCouponComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/RedeemCouponComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/m0;->a:Lcom/narvii/wallet/RedeemCouponComponent;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/m0;->a:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/RedeemCouponComponent;->c(Lcom/narvii/wallet/RedeemCouponComponent;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
