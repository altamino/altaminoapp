.class public final synthetic Lcom/narvii/wallet/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;

.field public final synthetic b:Lcom/narvii/util/http/ApiResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/x;->a:Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;

    iput-object p2, p0, Lcom/narvii/wallet/x;->b:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/x;->a:Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;

    iget-object v1, p0, Lcom/narvii/wallet/x;->b:Lcom/narvii/util/http/ApiResponseListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->p(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;Lcom/narvii/util/http/ApiResponseListener;Landroid/view/View;)V

    return-void
.end method
