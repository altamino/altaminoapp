.class Lcom/narvii/amino/CommunityNavBarFragment$5;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "CommunityNavBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/CommunityNavBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/CommunityNavBarFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$5;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 337
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$5;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$300(Lcom/narvii/amino/CommunityNavBarFragment;)V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 332
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$5;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->access$300(Lcom/narvii/amino/CommunityNavBarFragment;)V

    return-void
.end method
