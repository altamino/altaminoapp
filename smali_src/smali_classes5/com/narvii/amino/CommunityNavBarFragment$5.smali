.class Lcom/narvii/amino/CommunityNavBarFragment$5;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$5;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$5;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->x(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 6
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$5;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->x(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 6
    return-void
.end method
