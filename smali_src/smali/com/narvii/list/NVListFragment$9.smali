.class Lcom/narvii/list/NVListFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListFragment;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$scroll:Z


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$9;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/list/NVListFragment$9;->val$id:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/list/NVListFragment$9;->val$scroll:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$9;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/list/NVListFragment$9;->val$id:Ljava/lang/String;

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/narvii/list/NVListFragment$9;->val$scroll:Z

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    .line 12
    return-void
.end method
