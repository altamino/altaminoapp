.class Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$1;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$1;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->isResumed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePack()V

    .line 10
    :cond_0
    return-void
.end method
