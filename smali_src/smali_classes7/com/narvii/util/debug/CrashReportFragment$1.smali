.class Lcom/narvii/util/debug/CrashReportFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/CrashReportFragment$1;->this$0:Lcom/narvii/util/debug/CrashReportFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/debug/CrashReportFragment$1;->this$0:Lcom/narvii/util/debug/CrashReportFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/util/debug/CrashReportFragment;->larkRobot:Lcom/narvii/util/debug/LarkRobot;

    .line 5
    .line 6
    const-string v1, "Crash"

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/util/debug/CrashReportFragment;->info:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/debug/LarkRobot;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
