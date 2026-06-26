.class Lcom/narvii/util/debug/DebugService$1;
.super Ljava/lang/Object;
.source "DebugService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/DebugService;->hearShake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/DebugService;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/DebugService;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService$1;->this$0:Lcom/narvii/util/debug/DebugService;

    iput-object p2, p0, Lcom/narvii/util/debug/DebugService$1;->val$list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/util/debug/DebugService$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 72
    iget-object p2, p0, Lcom/narvii/util/debug/DebugService$1;->this$0:Lcom/narvii/util/debug/DebugService;

    iget-object v0, p0, Lcom/narvii/util/debug/DebugService$1;->val$a:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/debug/DebugService;->onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method
