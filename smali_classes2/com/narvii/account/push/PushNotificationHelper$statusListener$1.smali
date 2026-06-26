.class public final Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;
.super Ljava/lang/Object;
.source "PushNotificationHelper.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeightFix(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    return-void
.end method

.method public onPostDone(Lcom/narvii/comment/post/CommentPostActivity;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    if-eqz p2, :cond_0

    .line 38
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;->this$0:Lcom/narvii/account/push/PushNotificationHelper;

    const-string p2, "scenario_comment"

    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
