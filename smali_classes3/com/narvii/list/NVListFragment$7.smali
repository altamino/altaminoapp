.class Lcom/narvii/list/NVListFragment$7;
.super Ljava/lang/Object;
.source "NVListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$7;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 866
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$7;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->onEmptyRetry()V

    return-void
.end method
