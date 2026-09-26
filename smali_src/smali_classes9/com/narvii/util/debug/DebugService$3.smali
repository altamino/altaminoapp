.class Lcom/narvii/util/debug/DebugService$3;
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

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/DebugService;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/debug/DebugService$3;->val$edit:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->val$edit:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result p2

    .line 19
    .line 20
    const-string v0, "apiServerHost"

    .line 21
    .line 22
    const-string v1, "fakeProduction"

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iget-object p2, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    .line 51
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    .line 65
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$3;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/util/debug/DebugService;->a(Lcom/narvii/util/debug/DebugService;)V

    .line 69
    return-void
.end method
