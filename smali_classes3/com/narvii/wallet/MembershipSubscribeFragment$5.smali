.class Lcom/narvii/wallet/MembershipSubscribeFragment$5;
.super Ljava/lang/Object;
.source "MembershipSubscribeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->cofetti()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

.field final synthetic val$mmf:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$5;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$5;->val$mmf:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$5;->val$mmf:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->smoothScrollToHeaderMax()V

    return-void
.end method
