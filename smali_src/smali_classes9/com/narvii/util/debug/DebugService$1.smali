.class Lcom/narvii/util/debug/DebugService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService$1;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/debug/DebugService$1;->val$list:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/debug/DebugService$1;->val$a:Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$1;->val$list:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/CharSequence;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/util/debug/DebugService$1;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService$1;->val$a:Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/debug/DebugService;->onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method
