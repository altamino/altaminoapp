.class Lcom/narvii/wallet/MembershipSubscribeFragment$6;
.super Ljava/lang/Object;
.source "MembershipSubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 332
    new-instance p1, Lcom/narvii/util/PackageUtils;

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 333
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/util/PackageUtils;->openCommunity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$6;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
