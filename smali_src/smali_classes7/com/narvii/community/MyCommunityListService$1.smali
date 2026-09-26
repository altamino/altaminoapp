.class Lcom/narvii/community/MyCommunityListService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$1;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$1;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1, p2}, Lcom/narvii/community/MyCommunityListService;->c(Lcom/narvii/community/MyCommunityListService;III)V

    .line 7
    return-void
.end method

.method public onNotificationCountChanged(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$1;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, p2, v1}, Lcom/narvii/community/MyCommunityListService;->c(Lcom/narvii/community/MyCommunityListService;III)V

    .line 7
    return-void
.end method
