.class Lcom/narvii/flag/report/FlagReportOptionDialog$6;
.super Ljava/lang/Object;
.source "FlagReportOptionDialog.java"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog;->uploadCurFlagScreenShoot(Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$6;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    iput-object p2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$6;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 667
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 668
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 659
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$6;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$802(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$6;->val$callback:Lcom/narvii/util/Callback;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
