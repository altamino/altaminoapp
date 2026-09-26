.class Lcom/narvii/util/debug/DebugService$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService$5;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$5;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string p2, "fakeProduction"

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string p2, "apiServerHost"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$5;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/util/debug/DebugService;->a(Lcom/narvii/util/debug/DebugService;)V

    .line 30
    return-void
.end method
