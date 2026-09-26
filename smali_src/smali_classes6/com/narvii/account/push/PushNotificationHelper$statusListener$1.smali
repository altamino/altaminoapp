.class public final Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/comment/post/CommentPostActivity$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method constructor <init>(Lcom/narvii/account/push/PushNotificationHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onHeightFix(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0
    .param p1    # Lcom/narvii/comment/post/CommentPostActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPostDone(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0
    .param p1    # Lcom/narvii/comment/post/CommentPostActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    .line 9
    .line 10
    const-string p2, "scenario_comment"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 14
    :cond_0
    return-void
.end method
