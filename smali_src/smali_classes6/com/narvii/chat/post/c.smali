.class public final synthetic Lcom/narvii/chat/post/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/post/ThreadPostActivity;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/post/ThreadPostActivity;ZLcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/c;->a:Lcom/narvii/chat/post/ThreadPostActivity;

    iput-boolean p2, p0, Lcom/narvii/chat/post/c;->b:Z

    iput-object p3, p0, Lcom/narvii/chat/post/c;->c:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/post/c;->a:Lcom/narvii/chat/post/ThreadPostActivity;

    iget-boolean v1, p0, Lcom/narvii/chat/post/c;->b:Z

    iget-object v2, p0, Lcom/narvii/chat/post/c;->c:Lcom/narvii/widget/ACMAlertDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->z(Lcom/narvii/chat/post/ThreadPostActivity;ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method
