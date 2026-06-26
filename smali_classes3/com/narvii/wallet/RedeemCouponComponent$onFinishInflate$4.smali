.class final Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$4;
.super Ljava/lang/Object;
.source "RedeemCouponComponent.kt"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/RedeemCouponComponent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/RedeemCouponComponent;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/RedeemCouponComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$4;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 101
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://help-center"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    iget-object p2, p0, Lcom/narvii/wallet/RedeemCouponComponent$onFinishInflate$4;->this$0:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
