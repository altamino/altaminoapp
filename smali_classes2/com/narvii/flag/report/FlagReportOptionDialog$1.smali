.class Lcom/narvii/flag/report/FlagReportOptionDialog$1;
.super Ljava/lang/Object;
.source "FlagReportOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$1;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
