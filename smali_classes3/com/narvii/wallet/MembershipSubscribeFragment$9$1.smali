.class Lcom/narvii/wallet/MembershipSubscribeFragment$9$1;
.super Ljava/lang/Object;
.source "MembershipSubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment$9;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/MembershipSubscribeFragment$9;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment$9;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$1;->this$1:Lcom/narvii/wallet/MembershipSubscribeFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 634
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$1;->this$1:Lcom/narvii/wallet/MembershipSubscribeFragment$9;

    iget-object p1, p1, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-void
.end method
