.class Lcom/narvii/community/MyCommunityListService$9;
.super Ljava/lang/Object;
.source "MyCommunityListService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 756
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$9;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$9;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->sendReminderRequest(Ljava/util/List;)V

    .line 760
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$9;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
