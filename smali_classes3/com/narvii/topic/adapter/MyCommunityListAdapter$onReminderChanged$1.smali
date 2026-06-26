.class final Lcom/narvii/topic/adapter/MyCommunityListAdapter$onReminderChanged$1;
.super Ljava/lang/Object;
.source "MyCommunityListAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onReminderChanged$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onReminderChanged$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$notifyDataListChanged(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    return-void
.end method
