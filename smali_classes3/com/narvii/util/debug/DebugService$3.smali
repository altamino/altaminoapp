.class Lcom/narvii/util/debug/DebugService$3;
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

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/DebugService;Landroid/widget/EditText;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    iput-object p2, p0, Lcom/narvii/util/debug/DebugService$3;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "apiServerHost"

    const-string v1, "fakeProduction"

    if-nez p2, :cond_0

    .line 172
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    iget-object p1, p1, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 174
    :cond_0
    iget-object p2, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    iget-object p2, p2, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    invoke-static {p1}, Lcom/narvii/util/debug/DebugService;->access$000(Lcom/narvii/util/debug/DebugService;)V

    return-void
.end method
