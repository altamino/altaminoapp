.class Lcom/narvii/achievements/AchievementsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/AchievementsFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field n:I

.field final synthetic this$0:Lcom/narvii/achievements/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/AchievementsFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$2;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 2

    iget p1, p0, Lcom/narvii/achievements/AchievementsFragment$2;->n:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/achievements/AchievementsFragment$2;->n:I

    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment$2;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 2
    invoke-static {v1}, Lcom/narvii/achievements/AchievementsFragment;->t(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/checkin/CheckInHistoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$2;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->access$000(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$2;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->access$100(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AchievementsFragment$2;->call(Ljava/lang/Integer;)V

    return-void
.end method
