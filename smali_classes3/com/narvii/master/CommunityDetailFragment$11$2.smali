.class Lcom/narvii/master/CommunityDetailFragment$11$2;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$11;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$11;)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1598
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment$11;->access$2500(Lcom/narvii/master/CommunityDetailFragment$11;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1599
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11$2;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment$11;->access$2800(Lcom/narvii/master/CommunityDetailFragment$11;)V

    return-void
.end method
