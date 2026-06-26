.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    .line 107
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$000(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    return-void
.end method
