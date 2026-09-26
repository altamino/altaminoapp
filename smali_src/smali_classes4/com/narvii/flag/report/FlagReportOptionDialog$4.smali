.class Lcom/narvii/flag/report/FlagReportOptionDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->s(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->val$callback:Lcom/narvii/util/Callback;

    .line 12
    .line 13
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 17
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
