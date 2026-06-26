.class public final synthetic Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/blog/post/StoryPostActivity;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;ZLcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    iput-boolean p2, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;->f$1:Z

    iput-object p3, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;->f$2:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    iget-boolean v1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;->f$1:Z

    iget-object v2, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$8j6MDrRplD-hBL6pvaNomYgBwS0;->f$2:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/blog/post/StoryPostActivity;->lambda$showPublishToGlobalDialog$7$StoryPostActivity(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
