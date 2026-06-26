.class Lcom/narvii/util/debug/DebugService$5;
.super Ljava/lang/Object;
.source "DebugService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/DebugService;->apiServerHostDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/DebugService;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/DebugService;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService$5;->this$0:Lcom/narvii/util/debug/DebugService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$5;->this$0:Lcom/narvii/util/debug/DebugService;

    iget-object p1, p1, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "fakeProduction"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "apiServerHost"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$5;->this$0:Lcom/narvii/util/debug/DebugService;

    invoke-static {p1}, Lcom/narvii/util/debug/DebugService;->access$000(Lcom/narvii/util/debug/DebugService;)V

    return-void
.end method
