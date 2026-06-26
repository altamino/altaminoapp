.class Lcom/narvii/community/MyCommunityListService$1;
.super Ljava/lang/Object;
.source "MyCommunityListService.java"

# interfaces
.implements Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$1;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(II)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$1;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2}, Lcom/narvii/community/MyCommunityListService;->access$000(Lcom/narvii/community/MyCommunityListService;III)V

    return-void
.end method

.method public onNotificationCountChanged(II)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$1;->this$0:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/narvii/community/MyCommunityListService;->access$000(Lcom/narvii/community/MyCommunityListService;III)V

    return-void
.end method
