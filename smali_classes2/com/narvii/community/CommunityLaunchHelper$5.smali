.class Lcom/narvii/community/CommunityLaunchHelper$5;
.super Ljava/lang/Object;
.source "CommunityLaunchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityLaunchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$5;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch image timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper$5;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$700(Lcom/narvii/community/CommunityLaunchHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$5;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$800(Lcom/narvii/community/CommunityLaunchHelper;)V

    return-void
.end method
