.class Lcom/narvii/list/NVListFragment$9;
.super Ljava/lang/Object;
.source "NVListFragment.java"

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

    .line 1243
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$9;->this$0:Lcom/narvii/list/NVListFragment;

    iput-object p2, p0, Lcom/narvii/list/NVListFragment$9;->val$id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/narvii/list/NVListFragment$9;->val$scroll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1246
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$9;->this$0:Lcom/narvii/list/NVListFragment;

    iget-object v1, p0, Lcom/narvii/list/NVListFragment$9;->val$id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/narvii/list/NVListFragment$9;->val$scroll:Z

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    return-void
.end method
