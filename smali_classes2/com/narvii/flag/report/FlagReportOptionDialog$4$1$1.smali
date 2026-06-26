.class Lcom/narvii/flag/report/FlagReportOptionDialog$4$1$1;
.super Ljava/lang/Object;
.source "FlagReportOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1$1;->this$2:Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 520
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1$1;->this$2:Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;

    iget-object p1, p1, Lcom/narvii/flag/report/FlagReportOptionDialog$4$1;->this$1:Lcom/narvii/flag/report/FlagReportOptionDialog$4;

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagRequestDialog;->sendFlagRequest()V

    return-void
.end method
