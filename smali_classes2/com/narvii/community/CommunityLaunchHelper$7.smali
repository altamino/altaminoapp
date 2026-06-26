.class Lcom/narvii/community/CommunityLaunchHelper$7;
.super Ljava/lang/Object;
.source "CommunityLaunchHelper.java"

# interfaces
.implements Lcom/narvii/util/drawables/DrawableLoaderListener;


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

    .line 643
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$7;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch image fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper$7;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$700(Lcom/narvii/community/CommunityLaunchHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$7;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iput-object p1, v0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 654
    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$800(Lcom/narvii/community/CommunityLaunchHelper;)V

    return-void
.end method

.method public onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 646
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$7;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iput-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 647
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$800(Lcom/narvii/community/CommunityLaunchHelper;)V

    return-void
.end method
