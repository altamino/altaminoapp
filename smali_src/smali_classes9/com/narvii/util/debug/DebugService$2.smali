.class Lcom/narvii/util/debug/DebugService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/DebugService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService$2;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService$2;->this$0:Lcom/narvii/util/debug/DebugService;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/util/debug/DebugService;->shakeDialogShown:Z

    .line 6
    return-void
.end method
