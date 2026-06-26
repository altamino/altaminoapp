.class public final synthetic Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/post/ThreadPostActivity;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/post/ThreadPostActivity;ZLcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;->f$0:Lcom/narvii/chat/post/ThreadPostActivity;

    iput-boolean p2, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;->f$1:Z

    iput-object p3, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;->f$2:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;->f$0:Lcom/narvii/chat/post/ThreadPostActivity;

    iget-boolean v1, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;->f$1:Z

    iget-object v2, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostActivity$7_boI7zYyhHMDKMQWvdXZkgQyKA;->f$2:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->lambda$showPublishToGlobalDialog$2$ThreadPostActivity(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
