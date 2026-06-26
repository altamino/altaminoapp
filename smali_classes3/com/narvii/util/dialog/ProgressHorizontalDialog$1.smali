.class Lcom/narvii/util/dialog/ProgressHorizontalDialog$1;
.super Ljava/lang/Object;
.source "ProgressHorizontalDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/ProgressHorizontalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/ProgressHorizontalDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressHorizontalDialog;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressHorizontalDialog$1;->this$0:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressHorizontalDialog$1;->this$0:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(I)V

    return-void
.end method
