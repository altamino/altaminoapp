.class Lcom/narvii/master/CommunityDetailFragment$10$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$10;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$10;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment$10;->l(Lcom/narvii/master/CommunityDetailFragment$10;)Ljava/lang/Runnable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x1f4

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$10;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment$10;->access$100(Lcom/narvii/master/CommunityDetailFragment$10;)V

    .line 17
    return-void
.end method
