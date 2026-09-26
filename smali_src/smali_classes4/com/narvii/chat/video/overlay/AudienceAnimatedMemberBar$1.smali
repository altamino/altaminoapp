.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

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
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->g(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    .line 9
    return-void
.end method
