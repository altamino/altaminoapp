.class Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;
.super Ljava/lang/Object;
.source "FlagReportOptionDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog$4;->execPreBlockRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/flag/report/FlagReportOptionDialog$4;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog$4;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;->this$1:Lcom/narvii/flag/report/FlagReportOptionDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;->this$1:Lcom/narvii/flag/report/FlagReportOptionDialog$4;

    iget-object v0, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$4;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1$1;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1000(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
