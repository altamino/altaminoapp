.class Lcom/narvii/util/debug/CrashReportFragment$1;
.super Ljava/lang/Object;
.source "CrashReportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/CrashReportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/CrashReportFragment;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/CrashReportFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/util/debug/CrashReportFragment$1;->this$0:Lcom/narvii/util/debug/CrashReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/narvii/util/debug/CrashReportFragment$1;->this$0:Lcom/narvii/util/debug/CrashReportFragment;

    iget-object v0, p1, Lcom/narvii/util/debug/CrashReportFragment;->larkRobot:Lcom/narvii/util/debug/LarkRobot;

    iget-object p1, p1, Lcom/narvii/util/debug/CrashReportFragment;->info:Ljava/lang/String;

    const-string v1, "Crash"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/debug/LarkRobot;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
